set nocompatible              " be iMproved, required
filetype off                  " required

set wildmode=full " enables a menu at the bottom of the vim/gvim window.
set wildignore+=*/node_modules/*,*/bower_components/*

set rtp+=~/.vim/bundle/Vundle.vim " Sets runtime path to include vundle and initialize
call vundle#begin()

syntax enable           " enable syntax processing
set background=dark
colorscheme Hybrid		" awesome colorscheme
set tabstop=2       	" number of visual spaces per TAB

" Keymappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") " Allows use of tab for expansion

"UI CONFIG
set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set number              " show line numbers

"Disables
set nobackup            " Makes it so that vim doesn't create a backup.
set noswapfile			" Same as above. No more annoying .swp files.


"Vundle Plugins
Plugin 'JulesWang/css.vim' " Needed for vim version 7.3
Plugin 'chriskempson/base16-vim' "for base-16 colorschemes
Plugin 'gmarik/Vundle.vim' " Used for managing plugins
Plugin 'bling/vim-airline' " Used for better info at bottom of screen
Plugin 'cakebaker/scss-syntax.vim' " For proper css indents and highlights
Plugin 'shime/vim-livedown' " Markdown previewer
Plugin 'scrooloose/nerdcommenter' " For easy commenting;
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'Valloric/MatchTagAlways' " For html-tag matching

call vundle#end()            " required
filetype plugin indent on    " required

" Pathogen
execute pathogen#infect()
call pathogen#helptags() 
syntax on
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim " For ctrlp plugin
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Linux/MacOSX"

