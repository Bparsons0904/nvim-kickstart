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

  -- Also make it so cmd + s saves
  vim.keymap.set('n', '<D-s>', '<cmd>w<cr>'),
  vim.keymap.set('i', '<D-s>', '<esc><cmd>w<cr>'),
  vim.keymap.set('v', '<D-s>', '<esc><cmd>w<cr>'),
  vim.keymap.set('n', '<D-S>', '<cmd>wa<cr>'),
  vim.keymap.set('i', '<D-S>', '<esc><cmd>wa<cr>'),
  vim.keymap.set('v', '<D-S>', '<esc><cmd>wa<cr>'),

  -- Split Vertical which is actually horizontally
  vim.keymap.set('n', '<leader>v', '<cmd>vs<cr>'),


  -- Comment out the current line or visual selection
  -- vim.keymap.set('n', '<leader>c', '<cmd>CommentToggle<cr>'),

  -- Buffer control and navigation
  vim.keymap.set('n', '<leader>ba', '<cmd>enew<cr>'),
  vim.keymap.set('n', '<leader>bp', '<cmd>bp<cr>'),
  vim.keymap.set('n', '<leader>bn', '<cmd>bn<cr>'),
  vim.keymap.set('n', '<leader>bd', '<cmd>bd<cr>'),

  -- create new buffer, then open telescope find_files
  vim.keymap.set('n', '<leader>bf', '<cmd>enew<cr><cmd>lua require("telescope.builtin").find_files()<cr>'),
}
