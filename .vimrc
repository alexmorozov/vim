set nocompatible
set hlsearch
set number
set ruler
set bs=2 " Backspace, this is the same as :set backspace=indent,eol,start.
set scrolloff=5 " Show 5 lines above/below the cursor when scrolling.

set t_Co=256

" indentation settings
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" Navigate between code blocks assuming that curly brackets are not in the first column.
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>

colorscheme wombat256
set tags=tags;/

filetype plugin on
filetype plugin indent on
autocmd BufRead *.module set filetype=php
autocmd BufRead *.install set filetype=php
autocmd BufRead *.inc set filetype=php

set ignorecase
set smartcase

set wildmode=longest,list
" Folding options
set foldmethod=indent   "fold based on indent
set foldnestmax=1      "deepest fold is 1 level
set foldlevel=1         "this is just what i use

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/
