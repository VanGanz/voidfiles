"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"

" Plugin manager and settings {{{
call plug#begin('~/.vim/plugged')

 "If you need Vim help for vim-plug itself (e.g. :help plug-options), register vim-plug as a plugin.
 Plug 'junegunn/vim-plug'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'arcticicestudio/nord-vim'
 
" Initialize plugin system
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'

"let g:nord_comment_brightness = 15

""""""""""""""""" }}}

" Basic configuration   {{{
	set nocompatible
    filetype plugin on
    filetype indent on      " load filetype-specific indent files
	syntax on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
    set path+=**
"  Hit tab to :find by partial match
"  Use * to make it fuzzy
"  :b lets you autocomplete any open buffer

    "set termguicolors      "doesn't work!
	"colorscheme wal
    "colorscheme nord
    colorscheme slate

    set termencoding=utf-8
	set encoding=utf-8
	set number
	set relativenumber
    set ttimeoutlen=10
	set modelines=0

"Next are a few options that just make things better:
	set scrolloff=3
	set autoindent
	set showmode
	set showcmd
	set showmatch                   " highlight matching [{()}]
	set hidden
	set wildmenu                    " visual autocomplete for command menu
	set wildmode=list:longest
    set lazyredraw                  " redraw only when we need to
"	set visualbell
"   set cursorline
	set ttyfast
"	set ruler
"   set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
	set backspace=indent,eol,start
	set laststatus=2
	set undofile
    set undoreload=10000
    set undolevels=512
""""""""""""""""" }}}

"  Tabs and Spaces  {{{
	set tabstop=4       " number of visual spaces per tab
	set shiftwidth=4
	set softtabstop=4   " number of spaces in tab when editing
	set expandtab       " tabs are spaces

""""""""""""""""" }}}

" Mappings  {{{
" <ESC> ist weit weg
	inoremap jj <ESC>
"	inoremap jk <ESC>
"	inoremap kj <ESC>

" <ESC> is really far away
"   imap <c-d> <ESC>
"   nnoremap <c-d> <ESC>
"   vnoremap <c-d> <ESC>
"   cnoremap <c-d> <ESC>

" Save -> S - delete line and substitute text (same as cc)
    nnoremap S :w<cr>

" Yank to end of line
    nnoremap Y y$

" Fuck you, help key.
    nnoremap  <F1> :checktime<cr>
    inoremap <F1> <esc>:checktime<cr>k

""""""""""""""""" }}}

" Leader Shortcuts {{{

    let mapleader=","       " leader is comma

" edit vimrc/zshrc and load vimrc bindings
    nnoremap <leader>ev :vsp ~/.vimrc<CR>
    nnoremap <leader>eb :vsp ~/.bashrc<CR>
    nnoremap <leader>sv :source ~/.vimrc<CR>

" save session
    nnoremap <leader>s :mksession<CR>

""""""""""""""""" }}}

" Searching/moving  {{{
    set incsearch           " search as characters are entered
    set hlsearch            " highlight matches
    
"   highlight Search ctermfg=yellow
    hi Search ctermbg=LightYellow
    hi Search ctermfg=Red

  " turn off search highlight
    nnoremap <leader><space> :nohlsearch<CR>
  "If you search for an all-lowercase string your search will be case-insensitive, but if one or more characters is uppercase the search will be case-sensitive.
    set ignorecase
    set smartcase 

  " move vertically by visual line
    nnoremap j gj
    nnoremap k gk
    
  " move to beginning/end of line
    " nnoremap B ^
    nnoremap E $

  " highlight last inserted text
    nnoremap gV `[v`]

  " Easy buffer navigation
    noremap <C-h> <C-w>h    
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l

"""""""""""""""" }}}
 
 " Folding {{{

    set foldenable          " enable folding
    set foldlevelstart=10   " open most folds by default
    set foldnestmax=10      " 10 nested fold max
    set foldmethod=indent   " fold based on indent level
    set modelines=1         "check just the final line of the file for a modeline.
    " space open/closes folds
    nnoremap <space> za  

""""""""""""""""" }}}



""""""""{{{

""""""""""""""""" }}}

" vim:foldmethod=marker:foldlevel=0
