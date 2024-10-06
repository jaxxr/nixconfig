local mod = {}

vim.g.mapleader = " "

vim.keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "clear search highlights" })

return mod
