local null_ls = require "null-ls"
local format_on_save = require("custom.configs.utils").format_on_save

local opts = {
  sources = {
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.diagnostics.markdownlint.with {
      extra_args = {
        "--config",
        vim.fn.expand "~/.config/nvim/configs/markdownlint.yaml",
      },
    },
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.rubocop,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.prettier.with {
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "css",
        "scss",
        "html",
        "json",
        "markdown",
        "graphql",
      },
      extra_args = {
        "--config",
        vim.fn.expand "~/.config/nvim/configs/prettier.yaml",
      },
    },
    null_ls.builtins.formatting.rubocop,
    null_ls.builtins.formatting.shfmt.with {
      filetypes = { "sh", "zsh" },
    },
    null_ls.builtins.formatting.stylua.with {
      extra_args = {
        "--config-path",
        vim.fn.expand "~/.config/nvim/configs/stylua.toml",
      },
    },
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.formatting.yamlfmt,
  },
  on_attach = format_on_save,
}

return opts
