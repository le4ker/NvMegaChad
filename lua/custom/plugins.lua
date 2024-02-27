local nvimtree = require "custom.configs.nvimtree"
local nvterm = require "custom.configs.nvterm"
local treesitter = require "custom.configs.treesitter"

---@type NvPluginSpec[]
local plugins = {
  {
    "NvChad/nvterm",
    opts = nvterm.opts,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = nvimtree.opts,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = treesitter.opts,
  },
}

return plugins
