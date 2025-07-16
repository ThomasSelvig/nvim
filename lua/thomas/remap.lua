vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>")

-- Git keybindings
vim.keymap.set("n", "<leader>gs", "<cmd>Git<cr>")
vim.keymap.set("n", "<leader>ga", "<cmd>Git add .<cr>")
vim.keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>")
vim.keymap.set("n", "<leader>gp", "<cmd>Git push<cr>")
vim.keymap.set("n", "<leader>gl", "<cmd>Git pull<cr>")
vim.keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<cr>")
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")
