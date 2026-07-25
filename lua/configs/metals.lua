local metals = require "metals"

local metals_config = metals.bare_config()

metals_config.settings = {
  showImplicitArguments = false,
  showImplicitConversionsAndClasses = false,
  showInferredType = false,
  serverVersion = "latest.stable",
}

metals_config.capabilities = vim.lsp.protocol.make_client_capabilities()

-- Recognise Ammonite / Scala-CLI scripts
vim.filetype.add { extension = { sc = "scala" } }

local group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = { "scala", "sbt" },
  callback = function()
    metals.initialize_or_attach(metals_config)
  end,
})
