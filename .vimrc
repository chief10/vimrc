" Pathogen
"execute pathogen#infect()
"call pathogen#helptags() 
syntax on
filetype plugin indent on
set nocompatible              " be iMproved, required
filetype off                  " required

set wildmode=full " enables a menu at the bottom of the vim/gvim window.
set wildignore+=*/node_modules/*,*/bower_components/*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Linux/MacOSX
set rtp+=~/.vim/bundle/Vundle.vim " Sets runtime path to include vundle and initialize
set runtimepath^=~/.vim/bundle/ctrlp.vim " For ctrlp plugin
au BufRead,BufNewFile *.scss set filetype=scss.css
call vundle#begin()

set tabstop=2       	" number of visual spaces per TAB
set shiftwidth=2 " How many spaces are used when indenting using > and <

" Keymappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
"autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
"autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

"UI CONFIG
set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default

"Disables
set nobackup            " Makes it so that vim doesn't create a backup.
set noswapfile			" Same as above. No more annoying .swp files.


"Vundle Plugins
"
"Python plugins that require some config.
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'marijnh/tern_for_vim'
" End Python Plugins
Plugin 'ervandew/supertab'
Plugin 'wavded/vim-stylus' " for stylus support within vim.
Plugin 'mattn/emmet-vim' 
Plugin 'felixhummel/setcolors.vim' " Used for easily previewing colorschemes in vim.
Plugin 'flazz/vim-colorschemes' " Package of vim colorschemes.
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround' " for being able to change surrounding text.
Plugin 'chriskempson/base16-vim' "for base-16 colorschemes
Plugin 'gmarik/Vundle.vim' " Used for managing plugins
Plugin 'cakebaker/scss-syntax.vim' " For proper css indents and highlights
Plugin 'hail2u/vim-css3-syntax'
Plugin 'shime/vim-livedown' " Markdown previewer
Plugin 'scrooloose/nerdcommenter' " For easy commenting;
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'jiangmiao/auto-pairs' " for making vim auto-close brackets, braces and what not.
Plugin 'maksimr/vim-jsbeautify'

" Interface Plugins
Plugin 'bling/vim-airline'

" PHP Specific plugins 
Plugin 'StanAngeloff/php.vim'
" single colors
Plugin 'nelstrom/vim-mac-classic-theme'
"Plugin 'einars/js-beautify'

call vundle#end()            " required
filetype plugin indent on    " required


" Keyboard remappings go under here.
au BufNewFile,BufRead *.ejs set filetype=html
syntax enable           " enable syntax processing
set background=light
"colorscheme summerfruit256 " awesome colorscheme
colorscheme hybrid
