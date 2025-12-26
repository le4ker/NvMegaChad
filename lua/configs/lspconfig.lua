require("nvchad.configs.lspconfig").defaults()

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

-- Load custom configs from lua/lsp/<server>.lua
for _, server in ipairs(servers) do
  local ok, custom = pcall(require, "lsp." .. server)
  if ok then
    vim.lsp.config(server, custom)
  end
end

vim.lsp.enable(servers)
