" numberlins, syntax, tab space, matching bracket
set number
syntax enable
set ts=4
set autoindent
set showmatch 
set foldmethod=indent
set foldlevel=99
set clipboard=unnamed


" autoload vim plug 
"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tmhedberg/SimpylFold'
	Plug 'vim-scripts/indentpython.vim'
	Plug 'Valloric/YouCompleteMe'
	Plug 'vim-syntastic/syntastic'
	Plug 'nvie/vim-flake8'
	Plug 'jnurmine/Zenburn'
	Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
	Plug 'dracula/vim', {'as':'dracula'}
	Plug 'francoiscabrol/ranger.vim'
call plug#end()

let g:NERDTreeHijackNetrw = 0 
let g:ranger_replace_netrw = 1 

let python_highlight_all=1

map <C-n> :NERDTreeToggle<CR> " nerd tree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:SimpylFold_docstring_preview=1

color dracula
" move between splits 
"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <space> za


"js configuration 
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" bad whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


