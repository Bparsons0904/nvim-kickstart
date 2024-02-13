vim.g.copilot_no_tab_map = false
-- vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_assume_mapped = true

return   { "github/copilot.vim" }
