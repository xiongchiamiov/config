"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" Add or remove your Bundles here:
NeoBundle 'rhysd/committia.vim'
NeoBundle 'ciaranm/detectindent'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'haya14busa/incsearch-easymotion.vim'
NeoBundle 'altercation/vim-colors-solarized'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


set number

" Indent settings
set autoindent
set tabstop=4
let g:detectindent_preferred_expandtab=1
let g:detectindent_preferred_indent=4
autocmd BufReadPost * :DetectIndent

" Don't do stupid indentation when pasting.
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

" Set leader to something easy to type.
let mapleader=","
" Give the leader key completely over to EasyMotion.
map <Leader> <Plug>(easymotion-prefix)

" Always show some context at the top or bottom from the cursor.
set scrolloff=2

" Use fancy incsearch all the fucking time.
map /  <Plug>(incsearch-easymotion-/)
map ?  <Plug>(incsearch-easymotion-?)
map g/ <Plug>(incsearch-easymotion-stay)

" Do pretty color things.
syntax enable
set background=dark
colorscheme solarized

