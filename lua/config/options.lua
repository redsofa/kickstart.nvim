vim.opt.colorcolumn = "80"
vim.api.nvim_create_user_command(
  "Cheats", 
  "e ~/.config/nvim/lua/config/Cheats.txt",
  {}
)

