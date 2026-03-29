local keymap = vim.keymap

-- Telescope
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<CR>", { desc = "Search in files" })

-- File explorer
keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

print("Keymaps loaded!")