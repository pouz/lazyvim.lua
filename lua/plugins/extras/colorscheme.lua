return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    ---@class CatppuccinOptions
    opts = {
      transparent_background = true,
    },
  },
  { "ellisonleao/gruvbox.nvim", name = "gruvbox", priority = 1000 },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = true,
    priority = 1000,
    opts = {
      style = "night",
    },
  },
}
