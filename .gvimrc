if has("gui_macvim")
    :macmenu &Tools.List\ Errors key=<nop>
    :macmenu &File.Print key=<nop>
    ":macmenu &MacVim.Hide\ MacVim key=<nop>
    noremap ¬ :update<cr>

    set guifont=Menlo\ Regular:h14
    set guicursor+=a:blinkon0

    imap <D-r> <C-r>
    imap <D-p> <C-p>

    imap ˙ <esc>h
    imap • <esc>h
    imap <D-h> <esc>h
    noremap <D-h> <C-W>h

    imap ∆ <esc>j
    imap <D-j> <esc>j
    noremap <D-j> <C-W>j

    imap ˚ <esc>k
    imap љ <esc>k
    imap <D-k> <esc>k
    noremap <D-k> <C-W>k

    imap ¬ <esc>l
    imap <D-l> <esc>l
    noremap <D-l> <C-W>l

    noremap ∑√ <C-w> v
    noremap ∑ß <C-w> s
endif
