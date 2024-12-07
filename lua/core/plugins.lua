local packer = require('packer')

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.1",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use 'bluz71/vim-moonfly-colors'
  use 'rktjmp/lush.nvim'
  use 'metalelf0/jellybeans-nvim'
  use 'vimwiki/vimwiki'
  use 'Tetralux/odin.vim'
end)
