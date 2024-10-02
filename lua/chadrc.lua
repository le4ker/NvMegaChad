---@type ChadrcConfig
local M = {}

local function lsp()
  if rawget(vim, "lsp") then
    for _, client in ipairs(vim.lsp.get_active_clients()) do
      local stbufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)

      -- ignore copilot
      if client.attached_buffers[stbufnr] and client.name ~= "copilot" then
        return (vim.o.columns > 100 and "%#St_LspStatus#" .. "   LSP ~ " .. client.name .. " ") or "   LSP "
      end
    end
  end
end

M.ui = {
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
  statusline = {
    separator_style = "block",
    modules = {
      lsp = lsp,
    },
  },
}

M.base46 = {
  theme = "everforest_light",
}

return M
