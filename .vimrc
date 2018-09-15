" .vimrc 


" ===
" Pathogen
" ===
execute pathogen#infect()
filetype plugin indent on
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ===
" Key Mapping
" ===
" Disable arrow keys always
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
map <C-n> :NERDTreeToggle<CR>

" ===
" General
" ===
set nocompatible
set history=500

" ===
" UI
" ===
" Enable syntax colors
syntax on
" Change entire color scheme of vim
color dracula
" Display filename in title bar
set title

" Display line num, col num, etc in bottom status
set ruler
" Display matching braces
set showmatch


" display line numbers on side
set number ruler
" remove the line numbers while copying text
set mouse+=a
" Display date and time in status bar
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
" Display status line. Show mode, file, status, etc
set laststatus=2
" Enable visual autocomplete command menu
set wildmenu
" Display horizontal current line cursor
set cursorline

" ===
" Searching
" ===
" Ignore case when searching
set ignorecase
" Highlight search results
set hlsearch
" Show search matches as you type
set incsearch
" Show all matches in search such as parans
set showmatch

" ===
" Backup
" ===
" Disable backup file creation
set nobackup
set noswapfile

" ===
" Spaces and Tabs
" ===
" Enable auto indent
:set autoindent
" Press fn + F2 to use
:set pastetoggle=<F2>
" Set each tab indentation to four spaces
:set tabstop=4
" Set each tab indentation to four spaces 
:set shiftwidth=4
" Turns one tab into four spaces
:set expandtab


