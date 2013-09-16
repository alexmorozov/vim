set formatoptions+=tcqlro
let php_sql_query=1
let php_htmlInStrings=1
let php_folding = 1

set tabstop=2
set shiftwidth=2
set softtabstop=2

" Check syntax
noremap <C-l> :!php -l %<CR>
noremap ,c :!ctags --langmap=php:.engine.inc.module.theme.php.install.test --php-kinds=cdfi --languages=php --recurse -f ctags<CR>
