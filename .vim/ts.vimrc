" TypeScript

"" syntax highlight for json
autocmd BufNewFile,BufRead *.ts set syntax=typescript
let g:syntastic_typescript_checkers = ['tslint', 'tsc']

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

"" tsuquyomi
let g:tsuquyomi_single_quote_import=1

nmap <F2> :TsuImport<CR>
