return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
        require('Comment').setup()
    end,

    vim.api.nvim_set_keymap('n', '<C-/>', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('v', '<C-/>', '<cmd>lua require("Comment.api").toggle.linewise.visual()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('i', '<C-/>', '<Esc><cmd>lua require("Comment.api").toggle.linewise.current()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('x', '<C-/>', '<cmd>lua require("Comment.api").toggle.linewise.visual()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<C-_>', '<cmd>lua require("Comment.api").toggle.current()<CR>', { noremap = true, silent = true }),

}
