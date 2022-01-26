call plug#begin()

" Aesthetics - Main
Plug 'nvim-lualine/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'junegunn/vim-journal'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Aesthetics - Themes
Plug 'cseelus/vim-colors-lucid'
Plug 'flrnprz/plastic.vim'
Plug 'tomasr/molokai'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'patstockwell/vim-monokai-tasty'

" Neovim 0.5 Features (LSP, Telescope)
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" LSP Completion with COQ
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

" Functionalities
Plug 'scrooloose/nerdcommenter'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'wellle/targets.vim'
Plug 'cometsong/CommentFrame.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'APZelos/blamer.nvim'

call plug#end()
