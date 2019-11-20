" IDE

set clipboard=unnamed


set number " Show current line number
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set backspace=2
set hlsearch
set showcmd

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set directory=$HOME/.vim/swapfiles

" ACK
nnoremap <Leader>a :Ack!<Space>

let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**;node_modules/**"

" netrw
let g:netrw_localrmdir='rm -r'

" Remove trailing white spacing in the file
function! CustomStripWhitespace()
  if has("persistent_undo") && !empty(@%)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")

    %s/\s\+$//e
    exe "w"

    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  endif
endfunction

" Always remove the whistespace if the following command is used
command! W call CustomStripWhitespace()

autocmd StdinReadPre * let s:std_in=1
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow


"" Syntax highlighting
colorscheme gruvbox
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
if !has('nvim')
  set term=xterm-256color
endif
set termencoding=utf-8

"" Enable mouse
if !has('nvim')
  set ttymouse=xterm2
endif
se mouse=a

"" Omnicompletion
" set omnifunc=syntaxcomplete#Complete

"" Split management
set splitright                                                  "Split to the right
set splitbelow                                                  "Split bellow

" Mnemonic _i_nteractive
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>
nnoremap <C-d> :sh<cr>
nnoremap <C-I> :noh<cr>

"" Moving around tabs
nnoremap tn  :tabnew<CR>
nnoremap tc  :tabclose<CR>

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>

"" Buffers
nnoremap <C-b>h :bfirst<CR>
nnoremap <C-b>k :bprevious<CR>
nnoremap <C-b>j :bnext<CR>
nnoremap <C-b>l :blast<CR>
nmap # :b#<CR>
""" remap <C-b> motion
nnoremap <C-b><C-b> <C-b>

"" Make
noremap <F2> :SyntasticCheck<CR>

"" Unite

""" File search
nnoremap <leader>p :Unite file_rec/async<CR>

""" Grep
if executable('ack')
    set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
    set grepformat=%f:%l:%c:%m
endif
nnoremap <leader>/ :Unite grep:.<CR>

""" Buffers menu
nnoremap <leader>b :Unite -quick-match buffer<cr>

"" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let syntastic_mode_map = { 'passive_filetypes': ['html', 'cpp'] }

"" Ctrl P
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html PrettierAsync

"" Bclose
noremap <leader>q :Bclose<CR>
noremap <leader>q! :Bclose!<CR>

"" {
inoremap {<space> {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {{ {
inoremap {} {}

"" (
inoremap (<space> ()<Left>
inoremap (<CR> (<CR>)<ESC>O
inoremap (( (
inoremap () ()

"" [
inoremap [<space> []<Left>
inoremap [<CR> [<CR>]<ESC>O<tab>
inoremap [[ [
inoremap [] []

"" more for twig
inoremap {{<space> {{  }}<left><left><left>
inoremap {%<space> {%  %}<left><left><left>
inoremap {#<space> {#  #}<left><left><left>

let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1

" COC
source ~/.vim/coc.vimrc
