colorscheme molokai
execute pathogen#infect()
syntax on
filetype plugin indent on

"set number  
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  


let g:go_fmt_command = "goimports"

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"
" mappings for <cntrl-n> for NERDTreee
imap <c-n> <esc>:NERDTreeToggle<CR>
" mappings for <cntrl-t> for TagBar
imap <c-t> <esc>:TagbarToggle<CR>

" Neocomplete enabled on startup
let g:neocomplete#enable_at_startup = 1
"set necomplete to pick first match - so you can press <RETURN> when the right
"thing is matched in the drop down that you want
let g:neocomplete#enable_auto_select = 1
