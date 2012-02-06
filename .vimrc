"Use of pathogen plugin to keep each plugin in its own folder.
"inside a 'bundle' directory. It's the only way suppress / add
"plugin in a clean way.
call pathogen#infect()

set nocompatible

set t_Co=256
colorscheme wombat256

set number
set ruler
"set scrolloff=5 " Show 5 lines above/below the cursor when scrolling.

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

set tags=ctags;/
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

" taglist need to know where our ctags bin is located
let Tlist_Ctags_Cmd='/usr/bin/ctags'
"F12 toogle taglist buffer
nnoremap <silent> <F12> :TlistToggle<CR>
" show taglist at the right of the screen
let Tlist_Use_Right_Window=1
" Only print tags for current buffer
let Tlist_Show_One_File=1
" min width for taglist buffer. Drupal functions name are usually pretty long
let Tlist_WinWidth=50
" only print constants, class and functions in our taglist
let tlist_php_settings = 'php;d:Constants;c:Classes;f:Functions'

" Ultisnips settings
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Russian mapping for normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

map ,q <plug>NERDCommenterToggle
" Make tag jumper ask when where are multiple identifiers
noremap  <C-]> g<C-]>
