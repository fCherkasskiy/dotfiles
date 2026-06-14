-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local vim = vim
local o = vim.opt
local g = vim.g
-- local c = vim.cmd

o.colorcolumn = "80"
o.winbar = "%=%m %f"

g.lazyvim_python_lsp = "pyright" -- Set to "basedpyright" to use basedpyright instead of pyright.
g.lazyvim_python_ruff = "ruff" -- Set to "ruff_lsp" to use the old LSP implementation version.
g.root_spec = { "lsp", { ".envrc", ".git" }, "cwd" }
