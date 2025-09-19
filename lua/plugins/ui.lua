return {
  -- Add the catppuccin plugin and configure it
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- Set the theme flavor to Macchiato
      })
    end,
  },

  -- Override LazyVim's default config for bufferline.nvim
  {
    "akinsho/bufferline.nvim",
    lazy = true, -- Add this line
    dependencies = { "catppuccin/nvim" },
    init = function()
      -- Temporarily patch the catppuccin integration
      local bufline = require("catppuccin.groups.integrations.bufferline")
      if not bufline.get then
        bufline.get = bufline.get_theme
      end
    end,
    opts = {
      options = {
        highlights = require("catppuccin.groups.integrations.bufferline").get_theme(),
      },
    },
  },

  -- Configure LazyVim to load the catppuccin theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
