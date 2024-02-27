return {
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
}
