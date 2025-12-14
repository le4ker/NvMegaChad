return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    require("nvchad.configs.lspconfig").defaults()
    require "configs.lspconfig"
  end,
}
