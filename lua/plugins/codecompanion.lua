return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    -- Configure Claude (Anthropic)
    -- Make sure ANTHROPIC_API_KEY is set in your environment
    strategies = {
      chat = {
        adapter = {
          name = "anthropic",
          model = "claude-sonnet-4-20250514",
        },
      },
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CodeCompanionChat<CR>", desc = "CodeCompanion Chat" },
    { "<leader>ci", "<cmd>CodeCompanionInline<CR>", desc = "CodeCompanion Inline" },
  },
}

