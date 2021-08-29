syntax on
set nocompatible

" Vim-Polyglot VUE
let g:polyglot_disabled = ['vue']
let g:vue_pre_processors='detect_on_enter'

call plug#begin()

" Aesthetics - Main
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'junegunn/vim-journal'
Plug 'posva/vim-vue'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Aesthetics - Themes
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'cseelus/vim-colors-lucid'
Plug 'flrnprz/plastic.vim'
Plug 'tomasr/molokai'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'

" Functionalities
Plug 'scrooloose/nerdcommenter'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'sheerun/vim-polyglot'
Plug 'ervandew/supertab'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh'}
Plug 'alvan/vim-closetag'
Plug 'wellle/targets.vim'
Plug 'cometsong/CommentFrame.vim'

call plug#end()





" Coloring
color material

" Colorscheme configs
let g:quantum_black=1
let g:material_theme_style='darker'

" Overwrite terminal profile colors
set background=dark
set termguicolors

highlight Pmenu guibg=#111111 guifg=white
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none
highlight EndOfBuffer guifg=#252525 guibg=none
highlight VertSplit guifg=#2D2D2D guibg=#2D2D2D
highlight CursorLineNr guifg=white guibg=#171717

highlight nCursor guifg=white guibg=white
highlight iCursor guifg=white guibg=white
set guicursor=n-v-c:block-nCursor
set guicursor+=i-ci:hor30-iCursor

" Python3 VirtualEnv
let g:python3_host_prog = '/usr/bin/python3'

" Other Configurations
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





" Plugin Configurations

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Disable documentation window
set completeopt=menuone,noinsert,noselect

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

" IndentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" Closetag
let g:closetag_filetypes = 'html,xhtml,phtml,vue,js'

" Bufferline Lua
:lua << EOF
require'bufferline'.setup{
  options = {
    view = "default",
    numbers = "none",
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 20, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    show_buffer_close_icons = false,
    persist_buffer_sort = false,
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    sort_by = 'extension'
  }
}
EOF

" Lua Tree Explorer
let g:nvim_tree_width = 35
let g:nvim_tree_follow = 1
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:nvim_tree_auto_open = 0
let g:nvim_tree_auto_close = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 0
let g:nvim_tree_hide_dotfiles = 0
let g:nvim_tree_root_folder_modifier = ':t' "See :help filename-modifiers
let g:nvim_tree_tab_open = 0
let g:nvim_tree_width_allow_resize  = 1
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 1,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "ﰴ",
    \   'staged': "ﰳ",
    \   'unmerged': "",
    \   'renamed': "",
    \   'untracked': "什"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'symlink': "",
    \   }
    \ }

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" LSP Standard Configuration
:lua << EOF
  local nvim_lsp = require('lspconfig')
  local servers = {'pyright', 'tsserver', 'intelephense'}

  local on_attach = function(client, bufnr)
    require('completion').on_attach()
  end

  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
    }
  end
EOF

" LSP Completion
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" LSP Saga
:lua << EOF
  local saga = require('lspsaga')

  saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "single",
  }
EOF





" Filetype-Specific Configurations
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>

" HTML, XML, Jinja
autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
  let l:save = winsaveview()
  %s/\\\@<!\s\+$//e
  call winrestview(l:save)
endfunction

""" Custom Mappings
let mapleader=","

nmap <leader>e :Colors<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
nmap <leader>sh <C-w>s<C-w>j:terminal<CR>
nmap <leader>sv <C-w>v<C-w>l:terminal<CR>
nmap <leader>f :Files /<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>

" Save files with ,w
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>
nmap <silent> <leader><leader> :noh<CR>

" XMode to Normal Mode
:imap jf <Esc>

" Popup like IDE
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
  \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
  \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" NvimTreeOpen and NvimTreeClose are also available if you need them
nnoremap <leader>v :NvimTreeToggle<CR>
nnoremap <leader>R :NvimTreeRefresh<CR>
nnoremap <leader>x :NvimTreeFindFile<CR>

" Delete empty buffer and launch NvimTree at neovim start
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
  \ :bdelete | :NvimTreeToggle

" Next file and previous file with TAB
nmap <Tab> :BufferLineCycleNext<CR>
nmap <S-Tab> :BufferLineCyclePrev<CR>
"nmap <Tab> :bnext<CR>
"nmap <S-Tab> :bprevious<CR>

nmap <leader>q :bdelete<CR>
