return {
  "scalameta/nvim-metals",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,
  config = function()
    require "configs.metals"
  end,
}
