return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          color = {
            enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          },
        },
      })
    end,
  },
}
