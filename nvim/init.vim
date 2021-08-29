syntax on

" Plugins
source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/plugins/native_config.vim
source ~/.config/nvim/plugins/lua_config.vim

" Other Configurations
source ~/.config/nvim/other/elements_highlight.vim
source ~/.config/nvim/other/triggers.vim
source ~/.config/nvim/other/keybindings.vim

" Theme
color material

" Colorscheme configs
let g:quantum_black=1
let g:material_theme_style='darker'

" Overwrite terminal profile colors
set background=dark
set termguicolors

" Cursors
set guicursor=n-v-c:block-nCursor
set guicursor+=i-ci:hor30-iCursor

" Python3 VirtualEnv
let g:python3_host_prog = '/usr/bin/python3'

filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set encoding=utf-8
set number relativenumber
set title
set splitright splitbelow
set timeoutlen=150
set cursorline
set clipboard+=unnamedplus
set completeopt=menuone,noinsert,noselect
