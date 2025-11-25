local map = vim.keymap.set

-- LSP
map("n", "[d", vim.diagnostic.goto_prev, { desc = "LSP Go to previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "LSP Go to next diagnostic" })

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "Buffer New" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

-- Comment
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Comment Toggle comment" })

map(
  "v",
  "<leader>/",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "Comment Toggle comment" }
)

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "NvimTree Focus window" })

-- Telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Telescope Pick hidden term" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files" })
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

map("t", "<ESC>", close_terminal, { desc = "Terminal Close terminal" })
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp", size = 0.5 }
end, { desc = "Terminal New horizontal terminal" })

-- NvChad
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "NvChad Toggle NvCheatsheet" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "NvChad Show themes" })

-- General
map("i", "<C-h>", "<Left>", { desc = "General Move Left" })
map("i", "<C-l>", "<Right>", { desc = "General Move Right" })
map("i", "<C-j>", "<Down>", { desc = "General Move Down" })
map("i", "<C-k>", "<Up>", { desc = "General Move Up" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })
map("n", "<C-h>", "<C-w>h", { desc = "General Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "General Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "General Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "General Switch Window up" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "General File Copy whole" })
map("n", "<S-u>", "<C-r>", { desc = "General Redo" })
map("n", "<C-d>", "<C-d>zz", { desc = "General Move half page down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "General Move half page up and center" })
map("n", "<C-f>", "<C-f>zz", { desc = "General Move half down and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "General Move half up and center" })
map("n", "<leader>s", "<cmd> w <CR>", { desc = "General Save file" })
map("n", "<leader>v", "<cmd> vsplit <CR>", { desc = "General Vertical split" })
map("n", "<leader>lu", "<cmd> Lazy update <CR>", { desc = "General Update Lazy plugins" })
map("n", "<leader>pr", "<cmd> MarkdownPreviewToggle <CR>", { desc = "General Preview Markdown file" })
map("n", "<leader>fmt", function()
  vim.g.format_on_save = not vim.g.format_on_save
  if vim.g.format_on_save then
    print "Format on save enabled"
  else
    print "Format on save disabled"
  end
end, { desc = "General Toggle format on save" })

-- DAP
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "DAP Add breakpoint at line" })
map("n", "<leader>dso", "<cmd> DapStepOver <CR>", { desc = "DAP Step over" })
map("n", "<leader>dsi", "<cmd> DapStepIn <CR>", { desc = "DAP Step in" })
map("n", "<leader>dc", "<cmd> DapContinue <CR>", { desc = "DAP Continue" })
map("n", "<leader>dt", "<cmd> DapTerminate <CR>", { desc = "DAP Terminate" })
map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "DAP Debug Go test" })
map("n", "<leader>dglt", function()
  require("dap-go").debug_last_test()
end, { desc = "DAP Debug last Go test" })
map("n", "<leader>dpt", function()
  require("dap-python").test_method()
end, { desc = "DAP Debug Python test" })
