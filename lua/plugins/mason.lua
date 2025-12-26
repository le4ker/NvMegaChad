return {
  "williamboman/mason.nvim",
  config = function(_, opts)
    require("mason").setup(opts)
    local mason_registry = require "mason-registry"
    local ensure_installed = opts.ensure_installed or {}

    -- Ensure all listed tools are installed
    mason_registry.refresh(function()
      for _, tool in ipairs(ensure_installed) do
        local ok, package = pcall(mason_registry.get_package, tool)
        if ok and not package:is_installed() then
          package:install()
        end
      end
    end)
  end,
  opts = {
    ensure_installed = {
      "bash-language-server",
      "black",
      "clangd",
      "clang-format",
      "css-lsp",
      "debugpy",
      "delve",
      "dockerfile-language-server",
      "goimports",
      "golangci-lint",
      "gopls",
      "html-lsp",
      "isort",
      "stylua",
      "taplo",
      "terraform-ls",
      "tflint",
      "typescript-language-server",
      "lua-language-server",
      "markdownlint",
      "marksman",
      "prettier",
      "pylint",
      "pyright",
      "rubocop",
      "ruby-lsp",
      "shfmt",
      "sql-formatter",
      "vim-language-server",
      "yaml-language-server",
    },
  },
}
