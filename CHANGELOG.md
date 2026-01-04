## [2.12.0](https://github.com/le4ker/NvMegaChad/compare/v2.11.0...v2.12.0) (2026-01-04)

### ✨ Features

* add CodeCompanion inline assist with Claude Sonnet ([5b6d91c](https://github.com/le4ker/NvMegaChad/commit/5b6d91c16e349439a874173c109bf8d35523b08c))
* add mappingto close terminal in normal mode ([b701735](https://github.com/le4ker/NvMegaChad/commit/b70173564204294ce1d4acf79ecdd7e62c2e28aa))
* add nginx and requirements treesitter parsers ([f80156e](https://github.com/le4ker/NvMegaChad/commit/f80156eca389ebe2f2124f033c2b1c9461d1bf6c))
* add toggle for LSP inlay hints (<leader>ti) ([bd9b9dc](https://github.com/le4ker/NvMegaChad/commit/bd9b9dc373abb15d10bfb576cbd42b89612cdede))
* close telescope on <Esc><Esc> ([5238cb8](https://github.com/le4ker/NvMegaChad/commit/5238cb85cd517c17247c890003bf32d8ebd07e12))
* disable approval prompts for read-only CodeCompanion tools ([81a6f95](https://github.com/le4ker/NvMegaChad/commit/81a6f9558c85393c8805ba05316447ee7f61738d))
* enable inlay hints ([4bae044](https://github.com/le4ker/NvMegaChad/commit/4bae044a3eee5a33a2aae1b981a2fd4e642cbc0e))

### 🐛 Bug Fixes

* remove web_search tool ([bc0bdd7](https://github.com/le4ker/NvMegaChad/commit/bc0bdd7a2cfce16cb2c22731c7a59e33a35b1486))
* use native LSP completion with proper Tab/Enter keymaps ([1127028](https://github.com/le4ker/NvMegaChad/commit/1127028918f8a36d47ef4c6f5c5d06ed7a5b0394))

### 🔧 Refactoring

* migrate from nvim-cmp to Nneovim's 0.11 native completion API ([9a4ffaa](https://github.com/le4ker/NvMegaChad/commit/9a4ffaab9a309d5d9a5b96a998844e1b1c59690d))
* reorganize CodeCompanion config structure ([2e5535c](https://github.com/le4ker/NvMegaChad/commit/2e5535c900fbdcfcd64520db8439e39cf648dbd7))
* update mapping descriptions ([f53a6d6](https://github.com/le4ker/NvMegaChad/commit/f53a6d60b1eb7e11198ca34d6fe837fbb5077555))

### 📚 Documentation

* remove Release process from README ([83c661f](https://github.com/le4ker/NvMegaChad/commit/83c661ff0e0b5bc583dd02b06a448cbf76db04ef))
* update README.md ([df2bffa](https://github.com/le4ker/NvMegaChad/commit/df2bffa56671bc039a5c89497a6c386886ba0ffa))

### 🏠 Chores

* **license:** change license from GPL-3.0 to Apache-2.0 ([2d8bffd](https://github.com/le4ker/NvMegaChad/commit/2d8bffd37d7a562a7df5481c2e1e5fefc4a98407))
* update plugin versions in lazy-lock.json ([af4df60](https://github.com/le4ker/NvMegaChad/commit/af4df600851b7469b18696b756d49fe5ea8b9d46))

## [2.11.0](https://github.com/le4ker/NvMegaChad/compare/v2.10.0...v2.11.0) (2026-01-03)

### ✨ Features

* add CodeCompanion keymaps for actions and chat toggle ([3a95395](https://github.com/le4ker/NvMegaChad/commit/3a9539545c849f909fa566ae8975bd52535728f1))
* enable more tools for CodeCompanion ([35a7b26](https://github.com/le4ker/NvMegaChad/commit/35a7b261f21e8c4d86e03023be27d37bbf4ff406))
* set cheatsheet theme to simple ([54de0d4](https://github.com/le4ker/NvMegaChad/commit/54de0d4c39aa1b25edc5c67ec22eda6b7ec1be97))
* update statusline theme ([92a09b7](https://github.com/le4ker/NvMegaChad/commit/92a09b77a9f00fc59b97e5d078cf16162229998e))

### 🐛 Bug Fixes

* make trail more visible ([b9a4176](https://github.com/le4ker/NvMegaChad/commit/b9a4176a1853c88752b13ea6d7d856b64d15f4a2))
* remove space from mapping and make <leader>fa silent ([98a6d56](https://github.com/le4ker/NvMegaChad/commit/98a6d56fd9d4475ce6588ebab6f18aa7cf7705e6))
* restore live grep mapping ([6cf389a](https://github.com/le4ker/NvMegaChad/commit/6cf389ae0fc4b9dfdd02c540851324fe2dfae0c3))
* run 10 concurrent Mason installations ([8993e4e](https://github.com/le4ker/NvMegaChad/commit/8993e4ea649ea76553f4176fa97be96567e16494))
* update installed Mason packages on <leader>mu ([6f84460](https://github.com/le4ker/NvMegaChad/commit/6f84460d7eaf59c279bb5da995c3b36a6c748eff))

### 🔧 Refactoring

* copy whole file on <leader>y ([ec40ecd](https://github.com/le4ker/NvMegaChad/commit/ec40ecd8ac4665fbf07e08dba3a45b69a431c2d3))
* move CodeCompanionChat mapping to mappings.lua ([2bada9c](https://github.com/le4ker/NvMegaChad/commit/2bada9cf9db8a6f2866c3f8190651f1fedd5f74a))
* re-organize Cheatsheet ([b6142d3](https://github.com/le4ker/NvMegaChad/commit/b6142d3be5aad614a7cbe7c95196c032a10268ba))
* replace comment plugin with native Neovim API ([a329242](https://github.com/le4ker/NvMegaChad/commit/a32924289bdfd597d600b969db9f3e9a1846ccca))
* update mapping descriptions ([5631f23](https://github.com/le4ker/NvMegaChad/commit/5631f2362dad959e1618daaabc399b7302d35840))
* update mapping descriptions ([8df83dd](https://github.com/le4ker/NvMegaChad/commit/8df83dd88dacf9fa0ddf82890fa26f9758d812a8))

### 📚 Documentation

* update images ([979d0c9](https://github.com/le4ker/NvMegaChad/commit/979d0c9fcc6eb81d2380ebc15bf5efa2bcff3a7b))
* update README images ([8c1c73b](https://github.com/le4ker/NvMegaChad/commit/8c1c73b9a4796c3e3b2136f38cc0e77167730caa))

### 🏠 Chores

* update plugin versions in lazy-lock.json ([0e4add4](https://github.com/le4ker/NvMegaChad/commit/0e4add4e3ac1211757f9f489e99905d93e44f4ba))

## [2.10.0](https://github.com/le4ker/NvMegaChad/compare/v2.9.0...v2.10.0) (2025-12-26)

### ✨ Features

* add lua_ls to LSP servers list ([a8204a7](https://github.com/le4ker/NvMegaChad/commit/a8204a7458556e78a77d26f4e78a9002a1a2f84f))
* **dap:** add mapping to toggle DAP UI ([697b6be](https://github.com/le4ker/NvMegaChad/commit/697b6be37ad9bc14c67da6e9d9d1563be0f704cd))
* **lsp:** add gD mapping for go to declaration ([8a3abab](https://github.com/le4ker/NvMegaChad/commit/8a3abab881c8d1a3e778eea7f331fd8d9a93adc2))
* use double-ESC to close terminal, single ESC exits terminal mode ([00b6870](https://github.com/le4ker/NvMegaChad/commit/00b6870f4d795b24d0368e46a96136a87f5d5500))

### 🐛 Bug Fixes

* add timeout to conform format and fix indentation ([93eddd2](https://github.com/le4ker/NvMegaChad/commit/93eddd2dfd490cca0c672fa6fc0ccc8db80c215b))
* **lsp:** add on_attach and capabilities to all servers ([d0d07be](https://github.com/le4ker/NvMegaChad/commit/d0d07beb59ab546029bd252d2e44f56b21acf3a5))
* **lsp:** load custom server configs from lua/lsp directory ([9107b5c](https://github.com/le4ker/NvMegaChad/commit/9107b5c78c3599d274f4d211f14d9b684bfcffdf))
* refresh mason registry before installing packages ([f78ea3e](https://github.com/le4ker/NvMegaChad/commit/f78ea3e3c7e3193f06294782b1169f2d074250b5))
* remove conflicting terminal <ESC> mapping ([56ef7ab](https://github.com/le4ker/NvMegaChad/commit/56ef7abb5c9643e118af9fcd1bdd95504c759778))
* remove duplicate lspconfig defaults call ([4633359](https://github.com/le4ker/NvMegaChad/commit/4633359765a22f06a19a564f4573cc28c411f7a7))
* set formatter timeout ([f06601f](https://github.com/le4ker/NvMegaChad/commit/f06601f743001c3d5b3121c463618bcdd27033ce))

### 🔧 Refactoring

* remove redundant on_attach and capabilities from lspconfig ([2def766](https://github.com/le4ker/NvMegaChad/commit/2def766678dfb392170734bf0534c48c7740dcf0))
* use conform's built-in format_on_save option ([e86514b](https://github.com/le4ker/NvMegaChad/commit/e86514b05a79934419bbee6c33d0b7c557589cfa))

### 🏠 Chores

* **mappings:** standardize command spacing ([7478ad8](https://github.com/le4ker/NvMegaChad/commit/7478ad8d9fcb1bdf45e6f136ca1aad250f806130))
* remove obsolete LuaSnip unmappings ([a747c34](https://github.com/le4ker/NvMegaChad/commit/a747c34a37a43b02a1c62ebaaa1365072dd9dc8c))
* update plugin versions in lazy-lock.json ([a436e5a](https://github.com/le4ker/NvMegaChad/commit/a436e5a5578761260428a8b242b440846c131b70))

## [2.9.0](https://github.com/le4ker/NvMegaChad/compare/v2.8.0...v2.9.0) (2025-12-26)

### ✨ Features

* **treesitter:** add htmldjango parser support ([69c8459](https://github.com/le4ker/NvMegaChad/commit/69c8459666c9a9bf34bd14900d61644bc45f9f2f))

### 🔧 Refactoring

* **lsp:** simplify lspconfig and move server configs to separate files ([6388da2](https://github.com/le4ker/NvMegaChad/commit/6388da245794cb0d467577f21a9fd7b466725a6e))
* **lsp:** simplify lspconfig and move server configs to separate files ([0322294](https://github.com/le4ker/NvMegaChad/commit/03222947fbe19d6918cf96337b8ec67d83bf3b11))

### 📚 Documentation

* update README.md ([0f48a38](https://github.com/le4ker/NvMegaChad/commit/0f48a38fbcdd8be498ddc4ae62561e26a95ca1da))

### 🏠 Chores

* add semantic-release automation ([14f20d0](https://github.com/le4ker/NvMegaChad/commit/14f20d0b1cc732e012783704d2100236cc65d28d))
* **release:** 2.9.0 ([9636178](https://github.com/le4ker/NvMegaChad/commit/9636178132216082a690cf5191c5ed80fb8288ea))
* **release:** migrate to YAML config and customize release sect ([bbfcbfc](https://github.com/le4ker/NvMegaChad/commit/bbfcbfcfffa99385cb3f50ae878865700f2e33a0))
* trigger release workflow ([98372c2](https://github.com/le4ker/NvMegaChad/commit/98372c26a08a65d4d745ae3846ec78fb71b48767))

## [2.9.0](https://github.com/le4ker/NvMegaChad/compare/v2.8.0...v2.9.0) (2025-12-26)

### ✨ Features

* **treesitter:** add htmldjango parser support ([69c8459](https://github.com/le4ker/NvMegaChad/commit/69c8459666c9a9bf34bd14900d61644bc45f9f2f))

### 🔧 Refactoring

* **lsp:** simplify lspconfig and move server configs to separate files ([6388da2](https://github.com/le4ker/NvMegaChad/commit/6388da245794cb0d467577f21a9fd7b466725a6e))
* **lsp:** simplify lspconfig and move server configs to separate files ([0322294](https://github.com/le4ker/NvMegaChad/commit/03222947fbe19d6918cf96337b8ec67d83bf3b11))

### 📚 Documentation

* update README.md ([0f48a38](https://github.com/le4ker/NvMegaChad/commit/0f48a38fbcdd8be498ddc4ae62561e26a95ca1da))

### 🏠 Chores

* add semantic-release automation ([14f20d0](https://github.com/le4ker/NvMegaChad/commit/14f20d0b1cc732e012783704d2100236cc65d28d))
* **release:** migrate to YAML config and customize release sect ([bbfcbfc](https://github.com/le4ker/NvMegaChad/commit/bbfcbfcfffa99385cb3f50ae878865700f2e33a0))
