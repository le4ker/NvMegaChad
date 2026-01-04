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
            default_tools = { "full_stack_dev", "cmd_runner", "fetch_webpage" },
          },
          -- Disable approval for read-only tools
          ["read_file"] = {
            opts = { require_approval_before = false },
          },
          ["file_search"] = {
            opts = { require_approval_before = false },
          },
          ["grep_search"] = {
            opts = { require_approval_before = false },
          },
          ["list_code_usages"] = {
            opts = { require_approval_before = false },
          },
          ["get_changed_files"] = {
            opts = { require_approval_before = false },
          },
        },
      },
      inline = {
        adapter = {
          name = "anthropic",
          model = "claude-sonnet-4-20250514",
        },
      },
    },
  },
}
