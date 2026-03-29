local keymap = vim.keymap

-- Telescope
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<CR>", { desc = "Search in files" })

print("Keymaps loaded!")