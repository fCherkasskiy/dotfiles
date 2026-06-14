return {
  -- {
  --   vim.lsp.enable("ghdl_ls"),
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        bashls = {
          filetypes = { "zsh" }, -- Extend to include zsh
        },
      },
    },
  },
}
