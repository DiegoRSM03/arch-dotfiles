" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

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

" LSP Completion
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
