" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/cody/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/cody/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/cody/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/cody/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/cody/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["codi.vim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/codi.vim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  indentLine = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  onebuddy = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["repeat.vim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/repeat.vim"
  },
  ["smartpairs.vim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/smartpairs.vim"
  },
  tabular = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/tabular"
  },
  tagbar = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-kitty-navigator"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-kitty-navigator"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-one"
  },
  ["vim-prettier"] = {
    loaded = false,
    needs_bufread = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  },
  ["vim-textobj-xmlattr"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-textobj-xmlattr"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/Users/cody/.local/share/nvim/site/pack/packer/start/vim-which-key"
  }
}

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-prettier'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'vim-prettier'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType less ++once lua require("packer.load")({'vim-prettier'}, { ft = "less" }, _G.packer_plugins)]]
vim.cmd [[au FileType scss ++once lua require("packer.load")({'vim-prettier'}, { ft = "scss" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-prettier'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType graphql ++once lua require("packer.load")({'vim-prettier'}, { ft = "graphql" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-prettier'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'vim-prettier'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'vim-prettier'}, { ft = "yaml" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-prettier'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-prettier'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]]
vim.cmd [[source /Users/cody/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
