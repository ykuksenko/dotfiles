set nocompatible    "required for additional functionality
filetype off        "requider for additional functionality
  "https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/

filetype plugin indent on

"autocmd Filetype pp setlocal ts=2 sw=2 expandtab
call plug#begin('~/.vim/plugged')
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" Plug 'altercation/vim-colors-solarized'
" Plug 'ciaranm/inkpot'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'jlanzarotta/bufexplorer'
Plug 'majutsushi/tagbar'
Plug 'mattesgroeger/vim-bookmarks' "see vimawesome.com for documentation
Plug 'mileszs/ack.vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'mitsuhiko/vim-python-combined'
Plug 'nvie/vim-flake8'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'pearofducks/ansible-vim'
Plug 'powerline/powerline'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/syntastic'
Plug 'sirver/ultisnips'
Plug 'sjl/gundo.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haystack'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme', {'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

syntax on
filetype plugin indent on
scriptencoding utf-8


" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

set noswapfile
set title
set spell spelllang=en_us
set background=dark
set colorcolumn=80
set nowrap
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

autocmd BufRead,BufNewFile *.css setlocal ts=2 sw=2 sts=2
autocmd BufRead,BufNewFile *.html setlocal ts=2 sw=2 sts=2
autocmd BufRead,BufNewFile *.jinja setlocal ft=htmljinja ts=2 sw=2 sts=2
autocmd BufRead,BufNewFile *.js setlocal ts=2 sw=2 sts=2
autocmd BufRead,BufNewFile *.less setlocal ft=less ts=2 sw=2 sts=2
autocmd BufRead,BufNewFile *.md setlocal ft=markdown
autocmd BufRead,BufNewFile *.tst setlocal syntax=perl
autocmd BufRead,BufNewFile *.txt setlocal printoptions+=number:n
autocmd BufRead,BufNewFile *.scss setlocal ft=scss ts=2 sw=2 sts=2
autocmd BufRead,BufNewFile Vagrantfile setlocal ft=ruby ts=2 sw=2 sts=2

autocmd BufRead,BufNewFile Build* setlocal noexpandtab filetype=make syntax=make
autocmd BufRead,BufNewFile [Mm]ake* setlocal noexpandtab filetype=make syntax=make
autocmd FileType crontab set backupcopy=yes

" Remove all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

colorscheme luna-term
set ts=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:▸-,eol:¬,space:·
set autoindent
set smartcase
set number
set mouse=a
set cursorline "underline the line where the cursor is
set showmatch "show matching brace
set laststatus=2

function CopyModeOn()
    :set nolist
    :set nonumber
    :set mouse=
    :GitGutterDisable
endfunction

function CopyModeOff()
    :set list
    :set number
    :set mouse=a
    :GitGutterEnable
endfunction

:command C exec CopyModeOn()
:command V exec CopyModeOff()
