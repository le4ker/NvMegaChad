return {
  "olimorris/codecompanion.nvim",
  cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions" },
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
          model = "claude-opus-4-5-20251101",
        },
        roles = {
          user = "NvMegaChad Companion",
        },
        tools = {
          opts = {
            -- Enable tools for exploring the codebase (includes cmd_runner, file_search, grep_search, etc.)
            default_tools = { "full_stack_dev" },
          },
        },
      },
    },
  },
}
