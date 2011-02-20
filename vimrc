""" Setup pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

""" High-level settings
syntax on
filetype plugin indent on

""" Editing settings
" <BS> over everything
set backspace=indent,eol,start

" Open files where I left them
au BufReadPost * if line("'\"")>0 && line("'\"")<=line("$")|exe "normal g`\""|endif

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

" Insert spaces when I hit <TAB>
set expandtab

" Round indenting to multiples of the tabstop
set shiftround

" Automatically indent based on syntax
set smartindent

" Use multiples of tabstop when indenting
set shiftwidth=2


""" Visual settings

" Work in silence, unless I've got music playing
set noerrorbells

" Let me see what is flying by the screen
set more

" Show line numbers
set number

" Display info at the bottom of each buffer
set ruler

" Set the info displayed
set rulerformat=%40(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" Keep a little buffer at the top and bottom
set scrolloff=3

" Show commands as they're being typed
set showcmd

" Show matching braces etc
set showmatch

" Try to maintain the cursor position when moving up and down
set nostartofline

" Give me smooth
set ttyfast

" Highlight trailing whitespace (they bugger up {} movement)
set list listchars=trail:.,tab:>-
