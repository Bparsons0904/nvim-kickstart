return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
        require('Comment').setup(
            {
                pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
            }
        )
    end,

    vim.api.nvim_set_keymap('n', '<C-/>', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
        { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('v', '<C-/>', '<cmd>lua require("Comment.api").toggle.linewise.visual()<CR>',
        { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('i', '<C-/>', '<Esc><cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
        { noremap = true, silent = true }),
    -- Setup for mac users
    --[[ vim.api.nvim_set_keymap('n', '<C-/>', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('v', '<D-/>', '<cmd>lua require("Comment.api").toggle.linewise.visual()<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('i', '<D-/>', '<Esc><cmd>lua require("Comment.api").toggle.linewise.current()<CR>', { noremap = true, silent = true }), ]]
}
