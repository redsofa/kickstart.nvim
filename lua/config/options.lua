vim.opt.colorcolumn = "80"
vim.api.nvim_create_user_command(
  "ShortCuts", 
  "e ~/.config/nvim/lua/config/ShortCuts.txt",
  {}
)

