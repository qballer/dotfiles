" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	     Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:	         2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
   
" Switch syntax highlighting on

set t_Co=256
syntax on
set background=dark
colorscheme distinguished

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" keyboard shortcuts for splits
nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move    right a split
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split

"pathogen 
execute pathogen#infect()

"vim plug
call plug#begin()
	Plug 'Valloric/YouCompleteMe'
	Plug 'jelera/vim-javascript-syntax'
	Plug 'vim-airline/vim-airline'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'marijnh/tern_for_vim'
	Plug 'helino/vim-json'
	Plug 'mhinz/vim-signify'
	Plug 'rking/ag.vim'
	Plug 'leafgarland/typescript-vim'
	Plug 'kien/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'chrisbra/vim-diff-enhanced'
	Plug 'maksimr/vim-jsbeautify'
	Plug 'Quramy/tsuquyomi'
	Plug 'Quramy/vim-js-pretty-template'
	Plug 'jason0x43/vim-js-indent'
	Plug 'vim-syntastic/syntastic'   
	Plug 'fatih/vim-go'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'Townk/vim-autoclose'
	Plug 'vim-scripts/closetag.vim'
	Plug 'Lokaltog/vim-distinguished'
call plug#end()

" nerd tree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"air line
 if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
  set hlsearch

  " syntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

 " standard
let g:syntastic_javascript_checkers = ['standard']
set virtualedit=all

" git markdown
let vim_markdown_preview_toggle=2
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-,>'

"ctrlp
let g:ctrlp_user_command = 'find %s -type f | ack -iv "node_modules/.*/node_modules|.git|dist"'
"You complete me 
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
	  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif
:set nowrap
let g:ycm_server_python_interpeter = '/usr/local/bin/python2.7'

map <c-f> :call JsBeautify()<cr>
let g:ycm_server_python_interpreter = '/usr/bin/python'
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
  endif
let g:ycm_semantic_triggers['typescript'] = ['.']
