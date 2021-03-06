let mapleader = ','
set number
set ruler
syntax on

set path=.,,**

" Default Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Wrapping text by default
set wrap
set linebreak

" set font
set guifont=Consolas\14


" Searching and highlights
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

" Keep more content at the bottom of the buffer
set scrolloff=15

" Highlight cursor line
set cursorline

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,assets/*,.idea/*

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent ettings for the detecting filetype
filetype plugin indent on

" directories for swp files
set backupdir=~/dotvim/vim_backups//
set directory=~/dotvim/vim_backups//
set viewdir=~/dotvim/vim_backups//

" Show partial command in the status line
set showcmd

set hidden

set history=1000

set switchbuf=usetab

" ===================================================================
"                            MAPPING
" ===================================================================
" Better ESC

inoremap <C-F> <ESC>
inoremap <C-c> <ESC>
nnoremap <F8> :tabnext<CR>
nnoremap <S-F8> :tabprevious<CR>

" ====================================================================
"                          Vim Terminal
" ====================================================================
" 256 colors
set t_Co=256

" Making cursor bar in insert mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

filetype off

call pathogen#helptags()
execute pathogen#infect()

filetype plugin indent on
set laststatus=2

set noshowmode

syntax on
set background=dark

colorscheme onedark
