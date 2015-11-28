"auto indent and size of the tabulator
set autoindent
set tabstop=4

"color scheme
colorscheme default 
"additional key bindings
"go to the end and begin of line
imap <silent> <C-e> <End>
imap <C-a> <Home>
"enter command mode by pressing two times j or ctrl+j
inoremap jj <ESC> 
imap <C-j> <ESC>
"exit without saving with qw
cmap qw q!

