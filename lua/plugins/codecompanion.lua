return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    -- Configure Claude (Anthropic)
    -- Make sure ANTHROPIC_API_KEY is set in your environment
    adapters = {
      http = {
        anthropic = {
          model = "claude-3-5-sonnet-20241022",
        },
      },
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CodeCompanionChat<CR>", desc = "CodeCompanion Chat" },
    { "<leader>ci", "<cmd>CodeCompanionInline<CR>", desc = "CodeCompanion Inline" },
  },
}

