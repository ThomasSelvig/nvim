-- project files
vim.keymap.set('n', '<C-p>', '<cmd>Files<cr>', { desc = 'FZF find files' })
-- git files
vim.keymap.set('n', '<leader>ff', '<cmd>GFiles<cr>', { desc = 'FZF git files' })
-- project search
vim.keymap.set('n', '<leader>ss', '<cmd>Rg<cr>', { desc = 'FZF grep' })
-- fzf buffers
vim.keymap.set('n', '<leader>fb', '<cmd>Buffers<cr>', { desc = 'FZF buffers' })
