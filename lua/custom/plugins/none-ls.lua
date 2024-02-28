return {
  "nvimtools/none-ls.nvim",
  ft = {
    "bash",
    "c",
    "cpp",
    "css",
    "go",
    "graphql",
    "html",
    "lua",
    "markdown",
    "python",
    "ruby",
    "scss",
    "sh",
    "terraform",
    "typescript",
    "typescriptreact",
    "yaml",
    "zsh",
  },
  opts = function()
    return require "custom.configs.null-ls"
  end,
}
