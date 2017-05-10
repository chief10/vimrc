syntax on
" My variables


filetype plugin indent on
set nocompatible              " be iMproved, required
filetype off                  " required
filetype indent on

set wildmode=full " enables a menu at the bottom of the vim/gvim window.
set wildignore+=*/node_modules/*,*/bower_components/*,*/modules/*,*/custom/*,*/bundles/*,*/.python.env/*,*/.fsdb/*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Linux/MacOSX
set rtp+=~/.vim/bundle/Vundle.vim " Sets runtime path to include vundle and initialize
set runtimepath^=~/.vim/bundle/ctrlp.vim " For ctrlp plugin

" Keyboard remappings go under here.
au BufNewFile,BufRead *.ejs set filetype=html

" Line wrapping for markdown files.
au BufRead,BufNewFile *.markdown setlocal textwidth=80
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.ts set filetype=typescript
call vundle#begin()


set tabstop=2       	" number of visual spaces per TAB
set softtabstop=2
set shiftwidth=2 " How many spaces are used when indenting using > and <
set expandtab
set backspace=indent,eol,start


" Keymappings
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Adds current file name to pbcopy when using `\ + f`
nnoremap <leader>f :!echo -n % \| pbcopy<cr>


"UI CONFIG
set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set hidden              " Allows me to switch buffers without having to save.

"Disables
set nobackup            " Makes it so that vim doesn't create a backup.
set noswapfile			" Same as above. No more annoying .swp files.

setlocal cm=blowfish2 " Strongest file encryption method. If doesnt work it is because my version of vim is too old.
"Vundle Plugins


"Python plugins that require some config.
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips' " For ultisnips

" End Python Plugins
Plugin 'jamessan/vim-gnupg' " GPG File encryption
Plugin 'wavded/vim-stylus' " for stylus support within vim.
Plugin 'mattn/emmet-vim' 
Plugin 'felixhummel/setcolors.vim' " Used for easily previewing colorschemes in vim.

Plugin 'flazz/vim-colorschemes' " Package of vim colorschemes.

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround' " for being able to change surrounding text.
Plugin 'gmarik/Vundle.vim' " Used for managing plugins
Plugin 'cakebaker/scss-syntax.vim' " For proper css indents and highlights
Plugin 'hail2u/vim-css3-syntax'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'shime/vim-livedown' " Markdown previewer
Plugin 'scrooloose/nerdcommenter' " For easy commenting;
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'jiangmiao/auto-pairs' " for making vim auto-close brackets, braces and what not.
Plugin 'tpope/vim-fugitive' " Git wrapper for vim.
"
" Typescript
Plugin 'Quramy/tsuquyomi' 
Plugin 'Shougo/vimproc.vim'

" Interface Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" single colors
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'petelewis/vim-evolution'
Plugin 'nelstrom/vim-mac-classic-theme'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'danilo-augusto/vim-afterglow' " Nice vim colorscheme
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'} " Another vim colorscheme
Plugin 'chriskempson/base16-vim' "for base-16 colorschemes
Plugin 'w0ng/vim-hybrid'

" PHP Specific plugins 
Plugin 'StanAngeloff/php.vim'

"JavaScript specific plugins
Plugin 'ternjs/tern_for_vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'pangloss/vim-javascript'

" Below are options for the above vim-airline plugin
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2
let g:airline_powerline_fonts = 1
" Triggers for ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Allows Ctrl + P to find hidden files.
let g:ctrlp_show_hidden = 1

" Disable Background Color Erase (BCE) so that color schemes work
" properly within 256-color terminals
if &term =~ '256color'
  set t_ut=
endif"


call vundle#end()            " required

function Scramble()
    %!gpg -q --cipher-algo aes256 --symmetric --armor 2>/dev/null
endfunction

function Unscramble()
    %!gpg -q --cipher-algo aes256 --decrypt --armor 2>/dev/null
endfunction

"map <silent> <F7> :call Scramble()<Esc>
"map <silent> <F8> :call Unscramble()<Esc>
"if !has("gui_running")
			"let g:solarized_termtrans=1
			"let g:solarized_termcolors=256
"endif
set background=dark
syntax enable           " enable syntax processing
"colorscheme summerfruit256
"colorscheme evolution
"colorscheme hybrid_material
let g:jellybeans_termcolors=256
colorscheme jellybeans 
autocmd VimEnter * colo jellybeans

hi Normal ctermbg=none
" Abreviations
ab omdb https://image.tmdb.org/t/p/w370/
ab omdbsmall https://image.tmdb.org/t/p/w185


"let g:typescript_compiler_binary = 'tsc'
"let g:typescript_compiler_options = ''
