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
