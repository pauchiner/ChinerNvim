vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
-- Set floating windows background
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#2a2c3d'})