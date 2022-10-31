local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'github/copilot.vim'
-- support for all the languages you can think of
Plug 'sheerun/vim-polyglot'
-- intellisense
Plug 'neoclide/coc.nvim'


vim.call('plug#end')


vim.opt.number = true
-- don't highlight the last search, similar to running :noh
vim.opt.hlsearch = false

