-- BOOTSTRAP PACKER --


local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
  local use = use
  -- add you plugins here like:
  use 'github/copilot.vim'
  use 'tpope/vim-fugitive'
  use 'sheerun/vim-polyglot'
  use {'neoclide/coc.nvim' , branch = 'release'}
  use 'davidhalter/jedi-vim'
  use 'deoplete-plugins/deoplete-jedi'
  end
)


-- EDITOR OPTIONS --
vim.opt.number = true
-- don't highlight the last search, similar to running :noh
vim.opt.hlsearch = false

vim.cmd('source ~/.config/nvim/copilot_coc_conflict.vim')

