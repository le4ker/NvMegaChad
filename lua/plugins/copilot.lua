return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  build = ":Copilot auth",
  opts = {
    filetypes = {
      ["*"] = true,
    },
    suggestion = {
      enabled = false,
    },
    panel = {
      enabled = false,
    },
  },
  config = function(_, opts)
    require("copilot").setup(opts)
  end,
}
