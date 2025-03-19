-- LSPs without configuration
local default_servers = {
  "bashls",
  "clangd",
  "cssls",
  "dockerls",
  "html",
  "marksman",
  "ruby_lsp",
  "taplo",
  "terraformls",
  "tflint",
  "ts_ls",
  "vimls",
}

local lspconfig = require "lspconfig"
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

for _, lsp in ipairs(default_servers) do
  ---@diagnostic disable-next-line: undefined-field
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        extraPaths = {
          "global_helpers",
        },
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
  before_init = function(_, config)
    local util = require("lspconfig.util")
    local poetry_root = util.root_pattern("poetry.lock", "pyproject.toml")(config.root_dir)
    if poetry_root then
      local result = vim.fn.system("cd " .. poetry_root .. " && poetry env info -p 2>/dev/null")
      if vim.v.shell_error == 0 then
        local venv = vim.fn.trim(result)
        if venv ~= "" then
          config.settings.python.pythonPath = venv .. "/bin/python"
        end
      end
    end
  end,
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ["https://panther-community-us-east-1.s3.amazonaws.com/latest/logschema/schema.json"] = "internal/log_analysis/yamlschemas/schemas/**/*.yml",
        ["https://panther-community-us-east-1.s3.amazonaws.com/latest/logschema/schema-tests.json"] = "internal/log_analysis/yamlschemas/schemas/**/*_tests.yml",
        ["https://raw.githubusercontent.com/panther-labs/panther_analysis_tool/main/panther_analysis_tool/detection_schemas/analysis_config_schema.json"] = {
          "rules/**",
          "policies/**",
          "queries/**",
        },
      },
    },
  },
}
