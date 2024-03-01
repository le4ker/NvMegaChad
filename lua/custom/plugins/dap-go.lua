return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function(_, opts)
    require("dap-go").setup(opts)
    require("core.utils").load_mappings "dap_go"
  end,
}
