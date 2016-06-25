"autocmd Filetype pp setlocal ts=2 sw=2 expandtab
call plug#begin('~/.vim/plugged')
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
"Plug 'valloric/youcompleteme'
Plug 'Lokaltog/powerline'
Plug 'MattesGroeger/vim-bookmarks' "see vimawesome.com for documentation
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe', {'do': './install.py' }
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'nvie/vim-flake8'
Plug 'pearofducks/ansible-vim'
Plug 'powerline/powerline'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
call plug#end()

syntax on
colorscheme luna-term
set ts=4
set shiftwidth=4
set expandtab
set term=screen-256color
set list
set listchars=tab:▸-,eol:¬,space:·
set autoindent
set smartcase
set number
set mouse=a
set cursorline "underline the line where the cursor is
set showmatch "show matching brace
set laststatus=2
