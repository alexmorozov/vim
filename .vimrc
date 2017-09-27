"Use of pathogen plugin to keep each plugin in its own folder.
"inside a 'bundle' directory. It's the only way suppress / add
"plugin in a clean way.
call pathogen#infect()

set nocompatible

set t_Co=256
colorscheme wombat256

set number
set ruler
set cursorline
set cursorcolumn
"set scrolloff=5 " Show 5 lines above/below the cursor when scrolling.

set hlsearch
set wrapscan
set ignorecase
set smartcase
syntax on

set noswapfile
set nobackup
set nowritebackup

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
  autocmd BufRead,BufNewFile *.drush set filetype=php
augroup END

autocmd BufRead,BufNewFile *.md setf markdown
autocmd BufRead,BufNewFile *.haml setf haml
autocmd BufRead,BufNewFile *.less setf less
autocmd BufNewFile,BufRead *.sass setf sass
autocmd BufNewFile,BufRead *.scss setf scss

autocmd BufNewFile,BufRead *.sls setf yaml

" indentation settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set bs=2 " Backspace, this is the same as :set backspace=indent,eol,start.
set autoindent
set smartindent
set showbreak=>\ 

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

noremap <space> za

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Showmarks colors
highlight ShowMarksHLl ctermfg=255 ctermbg=248 guibg=#242424
highlight ShowMarksHLu ctermfg=255 ctermbg=248 guibg=#242424
highlight ShowMarksHLo ctermfg=255 ctermbg=248 guibg=#242424
highlight ShowMarksHLm ctermfg=255 ctermbg=248 guibg=#242424

" taglist need to know where our ctags bin is located
let Tlist_Ctags_Cmd='/usr/bin/ctags'
"F12 toogle taglist buffer
nnoremap <silent> <F8> :TlistToggle<CR>
" show taglist at the right of the screen
let Tlist_Use_Right_Window=1
" Only print tags for current buffer
let Tlist_Show_One_File=1
" min width for taglist buffer. Drupal functions name are usually pretty long
let Tlist_WinWidth=50
" only print constants, class and functions in our taglist
let tlist_php_settings = 'php;d:Constants;c:Classes;f:Functions'
" Jump to tag list on open
let Tlist_GainFocus_On_ToggleOpen=1

" Ultisnips settings
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" NerdTREE
nnoremap <silent> <F9> :NERDTree<CR>

" Russian mapping for normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
map ,q <plug>NERDCommenterToggle
" Make tag jumper ask when where are multiple identifiers
noremap  <C-]> g<C-]>
" Disable highlighting of search terms
noremap ,n :noh<CR>

" Close window
noremap ,q :q<CR>


set wildignore+=*/__pycache__/*,*.pyc,*.swp,*.zip

" Window switching, resizing and moving
" Alt+key switches to the window
map <A-h> <C-W>h
map h <C-W>h
noremap ˙ <C-W>h

map <A-j> <C-W>j
map j <C-W>j
noremap ∆ <C-W>j

map <A-k> <C-W>k
map k <C-W>k
noremap ˚ <C-W>k

map <A-l> <C-W>l
map l <C-W>l
noremap ¬ <C-W>l

" Alt+Shift+key moves the window
map <A-S-H> <C-W>H
map H <C-W>H
map <A-S-J> <C-W>J
map J <C-W>J
map <A-S-K> <C-W>K
map K <C-W>K
map <A-S-L> <C-W>L
map L <C-W>L

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Keypad resizes the windows
map Om <C-W>+
map OS <C-W>-
map <F2> <c-w><
map <F3> <c-w>>

" Switch buffers on Tab
noremap <Tab> :bn<CR>
" Alt-<num> switches to corresponding buffer
map <A-1> :b1<CR>
map 1 :b1<CR>
map <A-2> :b2<CR>
map 2 :b2<CR>
map <A-3> :b3<CR>
map 3 :b3<CR>
map <A-4> :b4<CR>
map 4 :b4<CR>
map <A-5> :b5<CR>
map 5 :b5<CR>
map <A-6> :b6<CR>
map 6 :b6<CR>
map <A-7> :b7<CR>
map 7 :b7<CR>
map <A-8> :b8<CR>
map 8 :b8<CR>
map <A-9> :b9<CR>
map 9 :b9<CR>
map <A-0> :b10<CR>
map 0 :b10<CR>

" Piece-wise copying of the line above.
" Stolen at http://www.slideshare.net/ZendCon/vim-for-php-programmers-presentation
"imap <C-l> @@@<ESC>hhkywjl?@@@<CR>P/@@@<CR>3s

" Showmarks configuration
let g:showmarks_enable=0
let g:showmarks_textlower="\t"
let g:showmarks_textother="\t"
let g:showmarks_textupper="\t"

" Python mode configuration
let g:pymode_lint_ignore = ""
let g:pymode_folding = 1

noremap <C-l> :update<cr>
noremap ,p :set paste!<cr>

let g:ctrlp_cmd='CtrlPMixed'
"
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
" Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Sort Python imports
command! -range=% Isort :<line1>,<line2>! isort -w 80 -
noremap ,i :Isort<CR>

" Per-project .vimrc
set exrc
set secure

set guifont=Menlo\ Regular:h14
set guicursor+=a:blinkon0

imap ˙ <esc>h
imap ∆ <esc>j
imap ˚ <esc>k
imap ¬ <esc>l
