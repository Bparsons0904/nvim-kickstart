return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      auto_close = true,
      update_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
    }

    -- Setting up the key mapping for nvim-tree
    vim.keymap.set('n', '<leader>et', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>ec', ':NvimTreeClose>CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>eo', ':NvimTreeOpen<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
  end,
}
