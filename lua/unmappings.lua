local unmap = vim.keymap.del

unmap({ "n", "x" }, "gc")
unmap("n", "gcc")
unmap("i", "<C-W>")
unmap("i", "<C-U>")
unmap("n", "&")
unmap("x", "#")
unmap("x", "*")
