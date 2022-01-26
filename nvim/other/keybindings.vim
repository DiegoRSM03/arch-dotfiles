let mapleader=","

nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>j :set filetype=journal<CR>

" LSP
nnoremap <silent>gk <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent>gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
nnoremap <silent>gc <cmd>lua require('lspsaga.provider').lsp_finder()<CR>
nnoremap <silent>gh <cmd>lua require('lspsaga.diagnostic').show_cursor_diagnostics()<CR>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Terminal management
nnoremap <leader>t <cmd>ToggleTerm<CR>
tnoremap <Esc> <cmd>ToggleTerm<CR>

" Save files with ,w
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>
nmap <silent> <leader><leader> :noh<CR>

" XMode to Normal Mode
:imap jf <Esc>

" Popup like IDE
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" NvimTreeOpen and NvimTreeClose are also available if you need them
nnoremap <leader>v :NvimTreeToggle<CR>
nnoremap <leader>R :NvimTreeRefresh<CR>
nnoremap <leader>x :NvimTreeFindFile<CR>

" Next file and previous file with TAB
nmap <Tab> :BufferLineCycleNext<CR>
nmap <S-Tab> :BufferLineCyclePrev<CR>

" Close current buffer
nmap <leader>q :bdelete<CR>
