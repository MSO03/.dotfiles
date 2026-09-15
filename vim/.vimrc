syntax on
:tabdo windo set number relativenumber
imap jj <Esc>
set incsearch
set wrap
set hlsearch
set autoindent
set wildmode=longest,list,full
set splitbelow splitright
:tabdo windo set ruler
:set expandtab  " turns tabs into spaces



" General indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" Enable language-specific indentation
filetype plugin indent on

" File-specific settings
augroup file_indentation
    autocmd!
    autocmd FileType yaml,yml,json setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType sql setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType javascript,typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType html,css setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType sh,bash setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END

