vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 999

vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  command = "wincmd L",
})
