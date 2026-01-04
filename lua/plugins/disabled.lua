-- Disable plugins that conflict with native LSP completion
return {
  { "hrsh7th/nvim-cmp", enabled = false },
  { "L3MON4D3/LuaSnip", enabled = false },
  { "saadparwaiz1/cmp_luasnip", enabled = false },
  { "windwp/nvim-autopairs", enabled = false },
  { "hrsh7th/cmp-nvim-lsp", enabled = false },
  { "hrsh7th/cmp-buffer", enabled = false },
  { "hrsh7th/cmp-nvim-lua", enabled = false },
  { "FelipeLema/cmp-async-path", enabled = false },
}
