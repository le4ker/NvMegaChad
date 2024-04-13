local options = {
  formatters_by_ft = {
    c = { "clangd-format" },
    cpp = { "clangd-format" },
    css = { "prettier" },
    go = { "goimports", "gofmt" },
    graphql = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "prettier" },
    lua = { "stylua" },
    markdown = { "prettier" },
    python = { "isort", "black" },
    scss = { "prettier" },
    sh = { "shfmt" },
    ruby = { "rubocop" },
    terraform = { "terraform_fmt" },
    toml = { "taplo" },
    typescript = { "prettier" },
    typercriptreact = { "prettier" },
    yaml = { "prettier" },
    zsh = { "shfmt" },
  },

  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },
}

require("conform").setup(options)
