local keymap = vim.keymap

-- Telescope
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<CR>", { desc = "Search in files" })

-- File explorer
keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Window navigation (using Ctrl+h/j/k/l - vim standard)
keymap.set("n", "<C-j>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
keymap.set("n", "<C-k>", "<C-w>j", { desc = "Move to bottom window" })
keymap.set("n", "<C-i>", "<C-w>k", { desc = "Move to top window" })

print("Keymaps loaded!")