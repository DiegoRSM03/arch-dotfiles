let mapleader=","

nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>sh <C-w>s<C-w>j:terminal<CR>
nmap <leader>sv <C-w>v<C-w>l:terminal<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>

" LSP
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

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

" Next file and previous file with TAB
nmap <Tab> :BufferLineCycleNext<CR>
nmap <S-Tab> :BufferLineCyclePrev<CR>

" Close current buffer
nmap <leader>q :bdelete<CR>
