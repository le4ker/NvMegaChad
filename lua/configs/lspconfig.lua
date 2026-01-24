require("nvchad.configs.lspconfig").defaults()

-- LSP servers to enable
local servers = {
  "bashls",
  "clangd",
  "cssls",
  "dockerls",
  "gopls",
  "html",
  "lua_ls",
  "marksman",
  "pyright",
  "ruby_lsp",
  "taplo",
  "terraformls",
  "tflint",
  "ts_ls",
  "vimls",
  "yamlls",
}

-- Enable inlay hints
vim.lsp.inlay_hint.enable(true)

-- Enable native LSP completion
require "configs.completion"

vim.lsp.enable(servers)
