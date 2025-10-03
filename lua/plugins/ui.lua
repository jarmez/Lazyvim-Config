return {
  -- Add the catppuccin plugin and configure it
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Override LazyVim's default config for bufferline.nvim

  -- Configure LazyVim to load the catppuccin theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
