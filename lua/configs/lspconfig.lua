-- All LSP servers to enable
-- Custom configurations are in lua/lsp/<server>.lua
local servers = {
  "bashls",
  "clangd",
  "cssls",
  "dockerls",
  "gopls",
  "html",
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
  local ok, config = pcall(require, "lsp." .. server)
  if ok then
    vim.lsp.config(server, config)
  end
end

vim.lsp.enable(servers)
