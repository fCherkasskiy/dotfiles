return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  opts = {
    modes = {
      lsp = {
        win = { position = "right" },
      },
    },
  },
  keys = {
    { "<leader>cs", "<cmd>Trouble symbols toggle win.position=left<cr>", desc = "Symbols (Trouble)" },
  },
}
