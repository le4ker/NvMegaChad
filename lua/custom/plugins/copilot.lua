return {
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup()
  end,
  event = "InsertEnter",
  build = ":Copilot auth",
  options = {
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
}
