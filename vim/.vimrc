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

" ==========================================
" WRITING PLUGINS
" ==========================================

call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()


" ==========================================
" WRITING SETTINGS
" ==========================================

augroup writing_settings
    autocmd!
    autocmd FileType markdown,text,tex setlocal wrap
    autocmd FileType markdown,text,tex setlocal linebreak
    autocmd FileType markdown,text,tex setlocal breakindent
   " autocmd FileType markdown,text,tex setlocal spell
   " autocmd FileType markdown,text,tex setlocal spelllang=en_us
    autocmd FileType markdown,text,tex setlocal nonumber
    autocmd FileType markdown,text,tex setlocal norelativenumber
    autocmd FileType markdown,text,tex setlocal textwidth=0
augroup END

" ==========================================
" LIMELIGHT SETTINGS
" ==========================================

let g:limelight_conceal_ctermfg = 240


autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Toggle Goyo writing mode
nnoremap <silent> <leader>gy :Goyo<CR>
