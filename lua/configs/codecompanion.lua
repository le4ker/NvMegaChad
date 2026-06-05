require("codecompanion").setup {
  adapters = {
    acp = {
      claude_code = function()
        return require("codecompanion.adapters").extend("claude_code", {
          env = {
            -- Read fresh from Keychain each call; Claude Code rotates the access token silently, so a static env var would go stale mid-session
            CLAUDE_CODE_OAUTH_TOKEN = [[cmd:security find-generic-password -s 'Claude Code-credentials' -a panos -w 2>/dev/null | python3 -c "import sys,json; print(json.loads(sys.stdin.read())['claudeAiOauth']['accessToken'])"]],
          },
        })
      end,
    },
  },
  interactions = {
    chat = {
      adapter = "claude_code",
      roles = {
        user = "Claude Code",
      },
    },
  },
}
