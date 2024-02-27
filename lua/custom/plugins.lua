local cmp = require "custom.configs.cmp"
local gitsigns = require "custom.configs.gitsigns"
local glow = require "custom.configs.glow"
local mason = require "custom.configs.mason"
local nvimtree = require "custom.configs.nvimtree"
local nvterm = require "custom.configs.nvterm"
local treesitter = require "custom.configs.treesitter"

---@type NvPluginSpec[]
local plugins = {
  {
    "hrsh7th/nvim-cmp",
    opts = cmp.opts,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = gitsigns.opts,
  },
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
    opts = glow.opts,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = mason.opts,
  },
  {
    "nvimtools/none-ls.nvim",
    ft = {
      "bash",
      "c",
      "cpp",
      "css",
      "go",
      "html",
      "lua",
      "markdown",
      "python",
      "ruby",
      "scss",
      "sh",
      "terraform",
      "typescriptreact",
      "yaml",
      "zsh",
    },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
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
