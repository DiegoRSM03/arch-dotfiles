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

" LSP Saga
:lua << EOF
  local saga = require('lspsaga')

  saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "round",
  }
EOF
