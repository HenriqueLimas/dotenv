set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'wincent/command-t', { 'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make' }
Plug 'wincent/terminus'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier'
Plug 'alvan/vim-closetag'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/matchit'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'duganchen/vim-soy'
Plug 'airblade/vim-gitgutter'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jonsmithers/vim-html-template-literals'
Plug 'heavenshell/vim-jsdoc'
Plug 'fatih/vim-go'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'

" filetype on
" All of your Plugins must be added before the following line
" call vundle#end()            " required
call plug#end()
filetype plugin indent on    " required

"" IDE specif settings
source ~/.vim/ide.vimrc

"" Language specific settings
source ~/.vim/js.vimrc
source ~/.vim/ts.vimrc

