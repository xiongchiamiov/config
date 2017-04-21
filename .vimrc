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
NeoBundle 'pearofducks/ansible-vim'
" Update to non-sucky Markdown rendering on old versions of vim.
NeoBundle 'tpope/vim-markdown'
NeoBundle 'editorconfig/editorconfig-vim'
" Add syntax recognition for Terraform files.
NeoBundle 'hashivim/vim-terraform'
" Call NeoBundleUpdate to update them to the latest versions.

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

" Hard-wrap at 80 characters.
set textwidth=79
" Auto-wrap using textwidth.
set formatoptions+=t
" Don't wrap a long line if it was already too long before entering insert
" mode.
set formatoptions+=l
" Auto-wrap comments.
set formatoptions+=c
" Don't insert comment leaders when manually adding linebreaks.
set formatoptions-=r
" Allow formatting of comments with "gq".
set formatoptions+=q
" Remove comment leaders when joining short comment lines.
set formatoptions+=j
" Set the textwidth back smaller when we're writing a commit message.
autocmd FileType gitcommit setlocal textwidth=72
" Show a visual indicator of where the boundary is.
set colorcolumn=80

" Show the line and column numbers and percent scroll all the time.
set ruler

" Don't do stupid indentation when pasting.
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

" Make backspace work like you'd generally expect.
set backspace=indent,eol,start

" Set leader to something easy to type.
let mapleader=","
" Give the leader key completely over to EasyMotion.
map <Leader> <Plug>(easymotion-prefix)

" Show undesired whitespace, but allow toggling it off.
set listchars=tab:▸_,trail:·
set list
nnoremap <Leader><Tab> :set list!<CR>

" Always show some context at the top or bottom from the cursor.
set scrolloff=2

" Use fancy incsearch all the fucking time.
map /  <Plug>(incsearch-easymotion-/)
map ?  <Plug>(incsearch-easymotion-?)
map g/ <Plug>(incsearch-easymotion-stay)
" Do case-insensitive searches, unless there's an uppercase letter.
set ignorecase
set smartcase

" Do pretty color things.
syntax enable
set background=dark
colorscheme solarized

"" Extra pretty color things for ansible.
" Super highlight key=, but only on newlines.
let g:ansible_attribute_highlight = 'ob'
" Highlight 'name:'.
let g:ansible_name_highlight = 'b'
" Highlight additional interesting words.
let g:ansible_extra_keywords_highlight = 1
