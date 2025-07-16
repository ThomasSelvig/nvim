require("bufferline").setup({
    options = {
        numbers = "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
            icon = '▎',
            style = 'icon',
        },
        buffer_close_icon = '×',
        modified_icon = '●',
        close_icon = '×',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30,
        tab_size = 21,
        diagnostics = false,
        diagnostics_update_in_insert = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                separator = true
            }
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'id'
    }
})

vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>")

-- New buffer/tab management
vim.keymap.set("n", "<leader>tn", ":enew<CR>")
vim.keymap.set("n", "<leader>tc", ":bdelete<CR>")
vim.keymap.set("n", "<C-w>", ":bdelete<CR>")

-- Last used buffer cycling with C-Tab
vim.keymap.set("n", "<C-Tab>", "<C-^>")
vim.keymap.set("n", "<C-S-Tab>", "<C-^>")

