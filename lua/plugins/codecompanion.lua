return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = {
        adapter = {
          -- ANTHROPIC_API_KEY must be set in your environment
          name = "anthropic",
          model = "claude-sonnet-4-20250514",
        },
        roles = {
          user = "NvMegaChad",
        },
      },
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CodeCompanionChat<CR>", desc = "CodeCompanion Chat" },
    { "<leader>ci", "<cmd>CodeCompanionInline<CR>", desc = "CodeCompanion Inline" },
  },
}
