return {
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

  -- When moving up and down, recenter the screen
  vim.keymap.set('n', '<C-u>', '<C-u>zz'),
  vim.keymap.set('n', '<C-d>', '<C-d>zz'),


  vim.keymap.set('n', 'gv', function()
    -- Save the current window ID to return later if needed
    local current_win = vim.api.nvim_get_current_win()

    -- Open a new split window (you can also use 'vsplit' for a vertical split)
    vim.cmd('split')

    -- Try to jump to the definition using LSP
    vim.lsp.buf.definition()

    -- Optional: Focus back to the original window if the definition wasn't found
    -- This part requires additional logic to check if the jump was successful
    -- and is left as an exercise or further customization.
  end, { desc = 'Go to definition in a split window' }),


  vim.keymap.set('n', '<leader>bq', function()
    vim.cmd('bufdo bd')
  end),
}
