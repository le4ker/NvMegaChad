require("codecompanion").setup {
  interactions = {
    chat = {
      adapter = "claude_code",
      roles = {
        user = "NvMegaChad Companion",
      },
    },
    inline = {
      adapter = "claude_code",
    },
  },
}
