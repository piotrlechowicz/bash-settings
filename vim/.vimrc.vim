"auto indent and size of the tabulator
set autoindent
set tabstop=4

"allow to use pastetoggle mode with F2
set pastetoggle=<f2>

"shows different languages syntax
syntax enable

"sets line numbering (to remove class "set nonumer")
set number 

"color scheme
colorscheme elflord

"additional key bindings
"go to the end and begin of line
imap <silent> <C-e> <End>
imap <C-a> <Home>

"copying and pasting
imap <C-Q> <C-R>*

"grep under the cursor
nnoremap <F3> :grep <C-R><C-W> *<CR>

"enter command mode by pressing two times j or ctrl+j
inoremap jj <ESC> 
imap <C-j> <ESC>
"exit without saving with qw
cmap q1 q!

"different color schem for using diff command
if &diff
	colorscheme ron
endif

"enable mouse
set mouse=a

if &diff
  colorscheme ron
endif
