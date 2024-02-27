return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    filters = {
      dotfiles = true,
    },
    git = {
      enable = true,
    },
    renderer = {
      highlight_git = true,
      indent_markers = {
        enable = true,
      },
      icons = {
        show = {
          git = true,
        },
      },
    },
  },
}
