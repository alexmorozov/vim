set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set nosmartindent

setlocal makeprg=python\ %
noremap <F5> :make<CR>
"let g:flake8_ignore="E501"

nnoremap <space> za
set wildignore+=*.pyc
