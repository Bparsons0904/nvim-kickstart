return {
vim.keymap.set('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>'),


-- Set jk and kj to <esc>
vim.keymap.set('i', 'jk', '<esc>'),
vim.keymap.set('i', 'kj', '<esc>'),

-- Set <leader>q to close window
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>'),

-- Set Ctrl + s to saved
vim.keymap.set('n', '<c-s>', '<cmd>w<cr>'),
vim.keymap.set('i', '<c-s>', '<esc><cmd>w<cr>'),
vim.keymap.set('v', '<c-s>', '<esc><cmd>w<cr>'),
vim.keymap.set('n', '<c-S>', '<cmd>wa<cr>'),
vim.keymap.set('i', '<c-S>', '<esc><cmd>wa<cr>'),
vim.keymap.set('v', '<c-S>', '<esc><cmd>wa<cr>'),

-- Split Vertical which is actually horizontally
vim.keymap.set('n', '<leader>v', '<cmd>vs<cr>'),


-- Comment out the current line or visual selection 
vim.keymap.set('n', '<leader>c', '<cmd>CommentToggle<cr>'),
}
