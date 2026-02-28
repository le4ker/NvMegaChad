return {
  "olimorris/codecompanion.nvim",
  cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    interactions = {
      chat = {
        adapter = "claude_code",
        roles = {
          user = "NvMegaChad Companion",
        },
      },
      inline = {
        adapter = {
          name = "anthropic",
          model = "claude-haiku-4-5",
        },
      },
    },
  },
}
