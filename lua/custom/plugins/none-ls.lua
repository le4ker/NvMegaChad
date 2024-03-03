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
    "javascript",
    "javascriptreact",
    "json",
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
    return require "custom.configs.none-ls"
  end,
}
