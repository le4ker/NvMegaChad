---@type ChadrcConfig
local M = {}

local function LSP_status()
  if rawget(vim, "lsp") then
    for _, client in ipairs(vim.lsp.get_active_clients()) do
      local stbufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)

      -- ignore copilot and null-ls clients
      if client.attached_buffers[stbufnr] and client.name ~= "copilot" and client.name ~= "null-ls" then
        return (vim.o.columns > 100 and "%#St_LspStatus#" .. "   LSP ~ " .. client.name .. " ") or "   LSP "
      end
    end
  end
end

M.ui = {
  theme = "everforest_light",
  tabufline = {
    overriden_modules = function(modules)
      table.remove(modules, 4)
    end,
  },
  statusline = {
    separator_style = "block",
    overriden_modules = function(modules)
      modules[8] = LSP_status() or ""
    end,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
