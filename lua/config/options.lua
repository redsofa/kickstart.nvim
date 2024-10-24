vim.opt.colorcolumn = '80'
vim.cmd.colorscheme 'catppuccin-frappe'
vim.api.nvim_create_user_command('Cheats', 'e ~/.config/nvim/lua/config/Cheats.txt', {})

vim.keymap.set('n', '<leader>gn', ':Gitsigns next_hunk<CR>', {})
vim.keymap.set('n', '<leader>gp', ':Gitsigns prev_hunk<CR>', {})
vim.keymap.set('n', '<leader>gv', ':Gitsigns preview_hunk<CR>', {})

--[[
  Source : https://www.reddit.com/r/neovim/comments/zv91wz/range_formatting/  
  Range format any block of code using the built-in format function 
--]]
local range_formatting = function()
  local start_row, _ = unpack(vim.api.nvim_buf_get_mark(0, '<'))
  local end_row, _ = unpack(vim.api.nvim_buf_get_mark(0, '>'))
  vim.lsp.buf.format {
    range = {
      ['start'] = { start_row, 0 },
      ['end'] = { end_row, 0 },
    },
    async = true,
  }
end
