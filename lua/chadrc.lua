---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "flex-light",
}

M.ui = {
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
  statusline = {
    separator_style = "block",
  },
}

return M
