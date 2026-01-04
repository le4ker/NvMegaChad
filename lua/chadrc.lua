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

M.plugins = {
  disabled = {
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "windwp/nvim-autopairs",
  },
}

return M
