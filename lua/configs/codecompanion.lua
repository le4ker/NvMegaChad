require("codecompanion").setup {
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
}
