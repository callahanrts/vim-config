vim.o.completeopt = "menuone,noselect"


local luasnip = require'luasnip'
local cmp = require'cmp'
-- local luasnip = require('core.snippets').luasnip

local function T(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local is_emmet_active = function()
  local clients = vim.lsp.buf_get_clients()

  for _, client in pairs(clients) do
    if client.name == "emmet_ls" then
      return true
    end
  end
  return false
end

local config = {
  formatting = {
    format = function(entry, vim_item)
      local icons = require("lsp.icons").icons
      vim_item.kind = icons[vim_item.kind]
      vim_item.menu = ({
        nvim_lsp = "(LSP)",
        emoji = "(Emoji)",
        path = "(Path)",
        calc = "(Calc)",
        -- cmp_tabnine = "(Tabnine)",
        vsnip = "(Snippet)",
        luasnip = "(Snippet)",
        buffer = "(Buffer)",
      })[entry.source.name]
      vim_item.dup = ({
        buffer = 1,
        path = 1,
        nvim_lsp = 0,
      })[entry.source.name] or 0
      return vim_item
    end,
  },
  snippet = {
    expand = function(args)
        require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
    -- ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ["<Tab>"] = cmp.mapping(function()
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(T "<C-n>", "n")
      elseif luasnip.expand_or_jumpable() then
        vim.fn.feedkeys(T "<Plug>luasnip-expand-or-jump", "")
      elseif check_backspace() then
        vim.fn.feedkeys(T "<Tab>", "n")
      elseif is_emmet_active() then
        return vim.fn["cmp#complete"]()
      else
        vim.fn.feedkeys(T "<Tab>", "n")
      end
    end, { 'i', 's' })
  },

  documentation = {
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "luasnip" },
    -- { name = "cmp_tabnine" },
    { name = "nvim_lua" },
    { name = "buffer" },
    { name = "calc" },
    { name = "treesitter" },
    { name = "spell" },
  }
}

-- LSP Completion
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require'lspconfig'.clangd.setup {
  capabilities = capabilities,
}

-- TODO: get this to work
require("luasnip/loaders/from_vscode").lazy_load({
  paths = "../core/snippets/"
})

cmp.setup(config)
