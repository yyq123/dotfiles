set nocompatible	"disable backwards-compatible with vi

set autoread		"error alert for destructive write

set number

colorscheme xoria256

set backup              " make backup files
set backupdir=/media/u01/temp   " where to put backup files
set backupskip=/media/u01/temp  " Don’t create backups when editing files in certain directories
set noswapfile          " no swap files
set undofile            " make undo files
set undodir=/media/u01/temp

set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop

set backspace=indent,eol,start        " allow backspacing over everything in insert mode
set confirm       " Show confirm dialog
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set gdefault      " applies substitutions globally on lines
set showmatch     " set show matching parenthesis
set incsearch     " show search matches as you type
set visualbell    " Silence the bell, use a flash instead
set showcmd       " Show (partial) command in status line
set showmode      " Show the current mode
set wildmenu      " turn on command line completion wild style
set wildmode=list:longest,full
set esckeys       " Allow cursor keys in insert mode
set modeline      " Respect modeline in files
set modelines=4
set list
set listchars=tab:\|·,trail:¶,nbsp:.,extends:»
" Enter the middle-dot by pressing Ctrl-k then .M
" " Enter the right-angle-quote by pressing Ctrl-k then >>
" " Enter the Pilcrow mark by pressing Ctrl-k then PI
" " The command :dig displays other digraphs you can use.

if has('gui_running')
	set guifont=Monospace\ 12
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=l
	set guioptions-=b
	set lines=500 columns=500
endif

" Save file with C-s
nnoremap <silent><C-s> :w<CR>

" plug-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer'
Plug 'kshenoy/vim-signature'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'google/vim-searchindex'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" gist-vim
let github_user = 'yyq123'

" Airline                                                                                 │
"let g:airline#extensions#branch#enabled = 1
" Show list of buffers in tabline
let g:airline#extensions#tabline#enabled = 1
" Show just the filename in tabline
let g:airline#extensions#tabline#fnamemod = ':t'
" show buffer number                                                                      │
let g:airline#extensions#tabline#buffer_nr_show = 1
" Airline theme
let g:airline_solarized_bg='dark'
" Airline symbols
"let g:airline_left_sep = "\uE0C0"
"let g:airline_right_sep = "\uE0C2"
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
