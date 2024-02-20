vim.g.copilot_no_tab_map = false
-- vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_assume_mapped = true

return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = { enabled = false },
            panel = { enabled = false },
        })
    end,
}

-- return {
--     "github/copilot.vim",
--     lazy = false,
--     -- config = function()
--     --     require("copilot").setup() {
--     --         suggestion = { enabled = false },
--     --         panel = { enabled = false },
--     --     }
--     -- end
-- }
