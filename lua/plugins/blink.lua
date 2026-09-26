return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  version = "1.*", -- pin to stable v1, avoid v2's breaking changes for now
  dependencies = {
    "rafamadriz/friendly-snippets", -- snippet source
  },
  opts = {
    keymap = { preset = "default" }, -- <C-n>/<C-p>/<C-y>-style, or "super-tab" if you prefer Tab-driven
    appearance = {
      nerd_font_variant = "mono", -- match your existing icon font
    },
    completion = {
      documentation = { auto_show = true },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    signature = { enabled = true },
  },
}
