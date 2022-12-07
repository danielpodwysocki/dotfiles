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
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use 'lewis6991/gitsigns.nvim'
  use {'neoclide/coc.nvim' , branch = 'release'}
  -- On new install, run :CocInstall coc-pyright
  --
  use 'deoplete-plugins/deoplete-jedi'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  end
)
require('gitsigns').setup()


-- EDITOR OPTIONS --
vim.opt.number = true
-- don't highlight the last search, similar to running :noh
vim.opt.hlsearch = false

vim.cmd('source ~/.config/nvim/copilot_coc_conflict.vim')

