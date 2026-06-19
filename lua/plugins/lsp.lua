return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "ruby_lsp",
        "ts_ls",
        "pyright",
        "rust_analyzer",
        "rubocop",
        "eslint-lsp",
      },
      automatic_installation = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN]  = "",
            [vim.diagnostic.severity.INFO]  = "",
            [vim.diagnostic.severity.HINT]  = "",
          },
        },
      })

      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })

      vim.lsp.enable({ "ruby_lsp", "ts_ls", "pyright", "rust_analyzer", "rubocop", "eslint" })

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.rb" },
        callback = function()
          vim.lsp.buf.format({ name = "rubocop", async = false })
        end,
      })

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
        callback = function()
          vim.lsp.buf.format({ name = "eslint", async = false })
        end,
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(keys, func)
            vim.keymap.set("n", keys, func, { buffer = args.buf })
          end

          map("gd",         "<cmd>Lspsaga goto_definition<CR>")
          map("gr",         "<cmd>Lspsaga finder<CR>")
          map("K",          "<cmd>Lspsaga hover_doc<CR>")
          map("<Leader>ca", "<cmd>Lspsaga code_action<CR>")
          map("<Leader>rn", "<cmd>Lspsaga rename<CR>")
          map("[d",         "<cmd>Lspsaga diagnostic_jump_prev<CR>")
          map("]d",         "<cmd>Lspsaga diagnostic_jump_next<CR>")
          map("<C-i>",      "<cmd>Lspsaga show_cursor_diagnostics<CR>")
          map("<Leader>cd", function()
            local diags = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })
            for _, diag in ipairs(diags) do
              local url = vim.tbl_get(diag, "user_data", "lsp", "codeDescription", "href")
              if url then vim.ui.open(url); return end
            end
            vim.notify("No documentation URL for this diagnostic", vim.log.levels.INFO)
          end)
        end,
      })
    end,
  },

  {
    "nvimdev/lspsaga.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lspsaga").setup({
        ui = { border = "rounded", winbar_prefix = "  " },
        lightbulb = { enable = false },
        symbol_in_winbar = { separator = "  " },
      })

      local function set_float_highlights()
        -- floats
        vim.api.nvim_set_hl(0, "NormalFloat",        { bg = "#282C34", fg = "#abb2bf" })
        vim.api.nvim_set_hl(0, "FloatBorder",        { bg = "#282C34", fg = "#c678dd" })
        vim.api.nvim_set_hl(0, "SagaBeacon",         { bg = "#c678dd" })
        -- winbar
        vim.api.nvim_set_hl(0, "WinBar",             { bg = "#21252c", fg = "#abb2bf", bold = false })
        vim.api.nvim_set_hl(0, "WinBarNC",           { bg = "#21252c", fg = "#5c6370" })
        vim.api.nvim_set_hl(0, "SagaWinbarSep",      { bg = "#21252c", fg = "#5c6370" })
        vim.api.nvim_set_hl(0, "SagaWinbarFileName", { bg = "#21252c", fg = "#61afef" })
        vim.api.nvim_set_hl(0, "SagaWinbarFolder",   { bg = "#21252c", fg = "#61afef" })
        vim.api.nvim_set_hl(0, "SagaWinbarFolderName", { bg = "#21252c", fg = "#5c6370" })
      end

      set_float_highlights()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_float_highlights })
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args) luasnip.lsp_expand(args.body) end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"]     = cmp.mapping.abort(),
          ["<CR>"]      = cmp.mapping.confirm({ select = false }),
          ["<Tab>"]     = cmp.mapping(function(fallback)
            if cmp.visible() then cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then luasnip.expand_or_jump()
            else fallback() end
          end, { "i", "s" }),
          ["<S-Tab>"]   = cmp.mapping(function(fallback)
            if cmp.visible() then cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then luasnip.jump(-1)
            else fallback() end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
