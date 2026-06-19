return {
  { "ryanoasis/vim-devicons" },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "ryanoasis/vim-devicons" },
    opts = {
      options = {
        theme = "onedark",
        section_separators = { left = "\u{E0B0}", right = "\u{E0B2}" },
        component_separators = { left = "\u{E0B1}", right = "\u{E0B3}" },
        globalstatus = false,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { { "filename", path = 0 } },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {
        lualine_a = { "tabs" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { { "windows", show_filename_only = true } },
      },
    },
  },
}
