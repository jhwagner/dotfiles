set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Theme
Plugin 'altercation/vim-colors-solarized'

" Navigation
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'

" Code completion
Plugin 'valloric/youcompleteme'

" Syntax
Plugin 'sheerun/vim-polyglot'

" Linting
Plugin 'scrooloose/syntastic'

" All plugins must be added before calling end
call vundle#end()		" required
filetype plugin indent on	" required

" Allow backspace to delete over linebreaks
set backspace=indent,eol,start

" Highlight/remove trailing whitespace on write
match ErrorMsg '\s\+$'
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

autocmd FileWritePre   * :call TrimWhiteSpace()
autocmd FileAppendPre  * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre    * :call TrimWhiteSpace()

" Theme/visual settings
syntax enable
set background=dark
colorscheme solarized

" Use spaces for all indentation
set expandtab
set shiftwidth=2
set softtabstop=2

set number			" enable line numbers
set completeopt-=preview	" disable preview window

" Disable YouCompleteMe for large files (it will exceed ycm's buffers
" and fail miserably)
let g:ycm_disable_for_files_larger_than_kb = 900

" EasyMotion settings
let g:EasyMotion_do_mapping = 0 " disable default mappings
" Character search: bind to `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" Bidirectional word search: bind to `w{label}`
nmap w <Plug>(easymotion-bd-w)
" Case insensitivity
let g:EasyMotion_smartcase = 1
" Line motions - j,k
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" n-char search with tab scrollin (overrides default vim search)g
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" Custom highlighting
hi link EasyMotionTarget2First Todo
hi link EasyMotionTarget2Second Todo
