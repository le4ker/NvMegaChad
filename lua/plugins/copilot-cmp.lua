return {
  "zbirenbaum/copilot-cmp",
  lazy = false,
  dependencies = {
    "hrsh7th/nvim-cmp",
    "zbirenbaum/copilot.lua",
  },
  config = function()
    require("copilot_cmp").setup()
  end,
}
