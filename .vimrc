"Use of pathogen plugin to keep each plugin in its own folder.
"inside a 'bundle' directory. It's the only way suppress / add
"plugin in a clean way.
call pathogen#infect()

set nocompatible

set t_Co=256
colorscheme wombat256

set number
set ruler
set scrolloff=5 " Show 5 lines above/below the cursor when scrolling.

set hlsearch
set wrapscan
set ignorecase
set smartcase
syntax on

filetype plugin on
filetype plugin indent on

" ensure that drupal extensions are read as php files.
augroup drupal
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.theme set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.engine set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
  autocmd BufRead,BufNewFile *.info set filetype=php
augroup END

" indentation settings
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set bs=2 " Backspace, this is the same as :set backspace=indent,eol,start.
set autoindent
set smartindent

" Navigate between code blocks assuming that curly brackets are not in the first column.
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>

set tags=tags;/
set encoding=utf-8

" activer l'omnicompletion pour tous les langages
set omnifunc=syntaxcomplete#Complete
set wildmode=longest,list

" for highlighting parent error ] or )
let php_parent_error_close = 1

" help for commenting functions
set syntax=php.doxygen


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

" Ultisnips settings
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Russian mapping for normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
