local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'

vim.call('plug#end')


vim.opt.number = true
-- don't highlight the last search, similar to running :noh
vim.opt.hlsearch = false

