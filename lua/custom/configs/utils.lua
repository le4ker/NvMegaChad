local M = {}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

M.format_on_save = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds {
      group = augroup,
      buffer = bufnr,
    }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        if vim.g.format_on_save then
          vim.lsp.buf.format { bufnr = bufnr }
        end
      end,
    })
  end
end

return M
