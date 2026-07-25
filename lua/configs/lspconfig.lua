require("nvchad.configs.lspconfig").defaults()

-- LSP servers to enable
local servers = {
  "bashls",
  "clangd",
  "cssls",
  "dockerls",
  "gopls",
  "html",
  "jsonls",
  "lua_ls",
  "marksman",
  "pyright",
  "ruby_lsp",
  "taplo",
  "terraformls",
  "ts_ls",
  "vimls",
  "yamlls",
}

-- Enable inlay hints
vim.lsp.inlay_hint.enable(true)

-- Enable native LSP completion
require "configs.completion"

-- Load per-server configs from lua/lsp/<server>.lua
for _, server in ipairs(servers) do
  local ok, config = pcall(require, "lsp." .. server)
  if ok then
    vim.lsp.config(server, config)
  end
end

vim.lsp.enable(servers)
