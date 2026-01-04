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

-- Load custom configs from lua/lsp/<server>.lua
for _, server in ipairs(servers) do
  local ok, custom = pcall(require, "lsp." .. server)
  if ok then
    vim.lsp.config(server, custom)
  end
end

vim.lsp.enable(servers)

-- Enable native LSP completion
require "configs.completion"
