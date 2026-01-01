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
    theme = "minimal",
    separator_style = "block",
  },
}

M.cheatsheet = {
  theme = "simple",
}

return M
