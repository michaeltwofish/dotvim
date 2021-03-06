set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim

""" Setup pathogen
filetype off
let g:pathogen_disabled = []
call pathogen#infect()

""" High-level settings
syntax on
filetype plugin indent on

" Unicode it up
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8                     " better default than latin1
	scriptencoding utf-8
  setglobal fileencoding=utf-8           " change default file encoding when writing new files
endif

let mapleader=","

""" Editing settings
" <BS> over everything
set backspace=indent,eol,start

" Open files where I left them
au BufReadPost * if line("'\"")>0 && line("'\"")<=line("$")|exe "normal g`\""|endif

" Sane tab completion in command mode
set wildmenu
set wildmode=list:longest,full

""" Search settings
" Jump to search results as I type. <ESC> takes me back to where I started
set incsearch

" Don't highlight search results
set nohlsearch

" Ignore case when searching
set ignorecase

" Except when I type a capital
set smartcase

""" Tab and indent settings
" I like a tabstop of 2
set tabstop=2

" Insert a tab when I hit <TAB>
set noexpandtab

" Round indenting to multiples of the tabstop
set shiftround

" Automatically indent based on syntax
set smartindent

" Use multiples of tabstop when indenting
set shiftwidth=2


""" Visual settings

let g:solarized_termcolors=256
set background=dark
syntax enable
colorscheme solarized

" Work in silence, unless I've got music playing
set noerrorbells

" Let me see what is flying by the screen
set more

" Show line numbers
set number

" Always display the status line
set laststatus=2

" Keep a little buffer at the top and bottom
set scrolloff=3

" Open vertical splits on the right
set splitright

" Show commands as they're being typed
set showcmd

" Show matching braces etc
set showmatch

" Try to maintain the cursor position when moving up and down
set nostartofline

" Give me smooth
set ttyfast

" Highlight trailing whitespace (they bugger up {} movement)
set list listchars=trail:.,tab:â,eol:¬

""" Buffer and window settings

" Remember a buffer's history when it's in the background
set hidden

""" Specific plugin settings

" This should only be mapped if NERDTree will be loaded, but we don't know that yet.
" see http://stackoverflow.com/questions/5010162/if-existscommand-fails-on-startup-using-pathogen
nnoremap <Leader>d :NERDTreeToggle<cr>

" Xdebug
nnoremap <Leader>x :source $HOME/.vim/xdebugger/debugger.vim<cr>
