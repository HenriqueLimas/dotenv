set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'AutoComplPop'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dracula/vim'
Plugin 'elubow/cql-vim'
Plugin 'fatih/vim-go'
Plugin 'ianks/vim-tsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'junegunn/vim-easy-align'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'peaksea'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'

" filetype on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" IDE specif settings
source ~/.vim/ide.vimrc

"" Language specific settings
source ~/.vim/js.vimrc
source ~/.vim/ts.vimrc

