" Important for a handful of things
set nocompatible

" Display column numbers at all times
set number

" Turn on important filetype options
filetype plugin indent on

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Always show the statusline
set laststatus=2

" Statusline already shows mode
set noshowmode

" Dynamically highlight searches
set hlsearch
set incsearch

" Filetype specifics. Will get own files eventually
autocmd FileType javascript,javascriptreact setlocal shiftwidth=2 softtabstop=2
autocmd FileType bash setlocal shiftwidth=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4

" Integrate airline and ale
let g:airline#extensions#ale#enabled = 1

" Enable ale autocomplete and omni-complete
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

" Make autocomplete movement go top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"

" Uncomment next line to prevent indentLine plugin from concealing
let g:indentLine_setConceal = 0

" Set ale linter to eslint only
let g:ale_linters = {'javascript': ['eslint', 'tsserver'],'javascriptreact': ['eslint', 'tsserver']}

" Better ale indicators
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight! link SignColumn LineNr

" Ale navigation
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" vim-plug section
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' " statusline
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multiple cursors
Plug 'AndrewRadev/tagalong.vim' " autochange HTML/XML tags
Plug 'Yggdroot/indentLine' " vertical lines to show indent
Plug 'pangloss/vim-javascript' " Better javascript syntax highlighting and indentation
Plug 'MaxMEllon/vim-jsx-pretty' " Better React syntax highlighting/editing
Plug 'dense-analysis/ale' " Linting and ?code completion?
Plug 'mattn/emmet-vim' " Expanding abbreviations
Plug 'jiangmiao/auto-pairs' " Insert/delete parens etc
Plug 'ervandew/supertab' " Use tab for autocomplete navigation
Plug 'tpope/vim-commentary' " Comment code with gcc/gc
Plug 'tpope/vim-surround' " Surround char editing

call plug#end()
