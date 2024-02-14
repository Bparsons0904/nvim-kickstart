return {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
        require("telescope").load_extension "frecency"

        vim.keymap.set("n", "<leader>fj", "<Cmd>Telescope frecency<CR>")
    end,
}
