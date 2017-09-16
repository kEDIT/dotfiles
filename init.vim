set nocompatible
set number
syntax on
filetype on
call plug#begin('~/.local/share/nvim/plugged')
Plug('junegunn/vim-easy-align')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('w0rp/ale')
Plug('jiangmiao/auto-pairs')
Plug('rakr/vim-one')
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug('fatih/vim-go')
Plug('godoctor/godoctor')
Plug('Shougo/deoplete.nvim'), { 'do': ':UpdateRemotePlugins' }
Plug('terryma/vim-multiple-cursors')
Plug('scrooloose/nerdcommenter')
call plug#end()
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"
let g:ale_linters = { 'go': ['gometalinter'] }
let g:ale_sign_error = '*'
let g:ale_sign_warning = '^'
let g:airline#extensions#ale#enabled = 1
let g:deoplete#enable_at_startup = 1
let g:go_jump_to_error = 0
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction
colorscheme one
set background=dark
let g:airline_theme='one'

