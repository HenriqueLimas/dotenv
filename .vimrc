set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'alvan/vim-closetag'
Plugin 'AutoComplPop'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dracula/vim'
Plugin 'elubow/cql-vim'
Plugin 'fatih/vim-go'
" Plugin 'google/vim-colorscheme-primary'
Plugin 'ianks/vim-tsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'junegunn/vim-easy-align'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'peaksea'
Plugin 'Quramy/tsuquyomi'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'rbgrouleff/bclose.vim'
" Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" filetype on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" IDE specif settings
source ~/.vim/ide.vimrc

"" Language specific settings
source ~/.vim/js.vimrc
source ~/.vim/ts.vimrc

