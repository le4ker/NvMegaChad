local options = {
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },
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
    sql = { "sql_formatter" },
    ruby = { "rubocop" },
    terraform = { "terraform_fmt" },
    toml = { "taplo" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    yaml = { "prettier" },
    zsh = { "shfmt" },
  },
}

local conform = require "conform"

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    if not vim.g.format_on_save then
      return
    end

    conform.format { bufnr = args.buf, lsp_format = "fallback", timeout_ms = 3000 }
  end,
})

conform.setup(options)
