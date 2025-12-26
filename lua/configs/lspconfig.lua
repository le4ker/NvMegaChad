-- All LSP servers to enable
-- Custom configurations are in lua/lsp/<server>.lua
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

local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- Load custom configs from lua/lsp/<server>.lua
for _, server in ipairs(servers) do
  local config = { on_attach = on_attach, capabilities = capabilities }
  local ok, custom = pcall(require, "lsp." .. server)
  if ok then
    config = vim.tbl_deep_extend("force", config, custom)
  end
  vim.lsp.config(server, config)
end

vim.lsp.enable(servers)
