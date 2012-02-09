setlocal makeprg=perl\ %
setlocal keywordprg=perldoc
noremap <F5> :make<CR>
noremap <C-l> :!perl -c %<CR>
