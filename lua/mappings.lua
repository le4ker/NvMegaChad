local map = vim.keymap.set

-- LSP
map("n", "[d", function()
  vim.diagnostic.jump { count = -1 }
end, { desc = "LSP Go to previous diagnostic" })
map("n", "]d", function()
  vim.diagnostic.jump { count = 1 }
end, { desc = "LSP Go to next diagnostic" })

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "Buffer New", silent = true })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

-- Comment (using native Neovim gc operator)
map("n", "<leader>/", "gcc", { desc = "Comment Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Comment Toggle comment", remap = true })

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle window", silent = true })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "NvimTree Focus window", silent = true })

-- Telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep", silent = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers", silent = true })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits", silent = true })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status", silent = true })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Telescope Pick hidden term", silent = true })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files", silent = true })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "Telescope Find all files" }
)

-- Terminal
local function close_terminal()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_close(win, true)
end

map("t", "<ESC><ESC>", close_terminal, { desc = "Terminal Close terminal" })
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp", size = 0.5 }
end, { desc = "Terminal New horizontal terminal" })

-- NvChad
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "NvChad Toggle NvCheatsheet", silent = true })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "NvChad Show themes", silent = true })

-- General
map("i", "<C-h>", "<Left>", { desc = "General Move Left" })
map("i", "<C-l>", "<Right>", { desc = "General Move Right" })
map("i", "<C-j>", "<Down>", { desc = "General Move Down" })
map("i", "<C-k>", "<Up>", { desc = "General Move Up" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights", silent = true })
map("n", "<C-h>", "<C-w>h", { desc = "General Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "General Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "General Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "General Switch Window up" })
map("n", "<leader>Y", "<cmd>%y+<CR>", { desc = "General Copy whole file", silent = true })
map("n", "<S-u>", "<C-r>", { desc = "General Redo" })
map("n", "<C-d>", "<C-d>zz", { desc = "General Move half page down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "General Move half page up and center" })
map("n", "<C-f>", "<C-f>zz", { desc = "General Move full page down and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "General Move full page up and center" })
map("n", "<leader>s", "<cmd>w<CR>", { desc = "General Save file", silent = true })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "General Quit", silent = true })
map("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "General Vertical Split", silent = true })
map("n", "<leader>lu", "<cmd>Lazy update<CR>", { desc = "General Update Lazy plugins", silent = true })
map("n", "<leader>mu", "<cmd>MasonUpdate<CR>", { desc = "General Update Mason registries", silent = true })
map("n", "<leader>pr", "<cmd>MarkdownPreviewToggle<CR>", { desc = "General Preview Markdown file", silent = true })
map("n", "<leader>tf", function()
  vim.g.format_on_save = not vim.g.format_on_save
  vim.notify(vim.g.format_on_save and "Format on save enabled" or "Format on save disabled")
end, { desc = "General Toggle format on save" })

-- DAP
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "DAP Add breakpoint at line", silent = true })
map("n", "<leader>dn", "<cmd>DapStepOver<CR>", { desc = "DAP Step over (next)", silent = true })
map("n", "<leader>di", "<cmd>DapStepIn<CR>", { desc = "DAP Step in", silent = true })
map("n", "<leader>dc", "<cmd>DapContinue<CR>", { desc = "DAP Continue", silent = true })
map("n", "<leader>dt", "<cmd>DapTerminate<CR>", { desc = "DAP Terminate", silent = true })
map("n", "<leader>do", "<cmd>DapStepOut<CR>", { desc = "DAP Step out", silent = true })
map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "DAP Debug Go test" })
map("n", "<leader>dgl", function()
  require("dap-go").debug_last_test()
end, { desc = "DAP Debug last Go test" })
map("n", "<leader>dpt", function()
  require("dap-python").test_method()
end, { desc = "DAP Debug Python test" })
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "DAP Toggle UI" })

-- LSP
map("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to definition" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to implementation" })
map("n", "gr", vim.lsp.buf.references, { desc = "LSP References" })
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code action" })

-- Toggle relative line numbers
map("n", "<leader>tn", function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { desc = "General Toggle relative numbers" })

-- CodeCompanion
map("n", "<leader>cca", "<cmd>CodeCompanionActions<CR>", { desc = "CodeCompanion Actions", silent = true })
map("n", "<leader>cct", "<cmd>CodeCompanionChat Toggle<CR>", { desc = "CodeCompanion Toggle", silent = true })
