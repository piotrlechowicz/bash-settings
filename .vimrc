"auto indent and size of the tabulator
set autoindent
set tabstop=4

"color scheme
colorscheme torte

"autocomplete of brackets
let s:pairs={
        \'<': '>',
		\'{': '}',
		\'[': ']',
		\'(': ')',
		\'«': '»',
		\'„': '“',
		\'“': '”',
		\'‘': '’',
\}
call map(copy(s:pairs), 'extend(s:pairs, {v:val : v:key}, "keep")')
function! InsertPair(left, ...)
	let rlist=reverse(map(split(a:left, '\zs'), 'get(s:pairs, v:val, v:val)'))
	let opts=get(a:000, 0, {})
	let start   = get(opts, 'start',   '')
	let lmiddle = get(opts, 'lmiddle', '')
	let rmiddle = get(opts, 'rmiddle', '')
	let end     = get(opts, 'end',     '')
	let prefix  = get(opts, 'prefix',  '')
	let start.=prefix
	let rmiddle.=prefix
	let left=start.a:left.lmiddle
	let right=rmiddle.join(rlist, '').end
	let moves=repeat("\<Left>", len(split(right, '\zs')))
	return left.right.moves
endfunction
noremap! <expr> {   InsertPair('{')
noremap! <expr> [   InsertPair('[')
noremap! <expr> (   InsertPair('(')
noremap! <expr> <   InsertPair('<')

"additional key bindings
"go to the end and begin of line
imap <silent> <C-e> <End>
imap <C-a> <Home>
"enter command mode by pressing two times j or ctrl+j
inoremap jj <ESC> 
imap <C-j> <ESC>
"exit without saving with qw
cmap qw q!

