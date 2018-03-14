set t_Co=256
syntax on
set background=dark

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


"vim plug
call plug#begin()
	Plug 'jelera/vim-javascript-syntax'
	Plug 'vim-airline/vim-airline'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'elzr/vim-json'
	Plug 'mhinz/vim-signify'
	Plug 'leafgarland/typescript-vim'
	Plug 'scrooloose/nerdtree'
	Plug 'chrisbra/vim-diff-enhanced'
	Plug 'maksimr/vim-jsbeautify'
	Plug 'Quramy/tsuquyomi'
	Plug 'jason0x43/vim-js-indent'
	Plug 'vim-syntastic/syntastic'   
	Plug 'fatih/vim-go'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'Townk/vim-autoclose'
	Plug 'vim-scripts/closetag.vim'
	Plug 'Lokaltog/vim-distinguished'
call plug#end()

::colorscheme distinguished


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
