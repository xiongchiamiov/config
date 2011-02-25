set number

colo less

set autoindent
set tabstop=4
let g:detectindent_preferred_indent=4
autocmd BufReadPost * :DetectIndent

" don't do stupid indentation when pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" execute any file with a shebang
au BufEnter *
\if match( getline(1) , '^\#!') == 0 |
\ execute("let b:interpreter = getline(1)[2:]") |
\endif

fun! CallInterpreter()
	if exists("b:interpreter")
		exec ("!".b:interpreter." %")
	endif
endfun

map <F5> :call CallInterpreter()<CR>

