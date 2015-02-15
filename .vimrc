" # COLOUR SCHEME :
" mkdir -p ~/.vim/colors
" cd ~/.vim/colors
" wget https://raw.githubusercontent.com/Lokaltog/vim-distinguished/develop/colors/distinguished.vim 

" # SNIPPETS :
" git clone git://github.com/msanders/snipmate.vim.git
" cd snipmate.vim
" cp -R * ~/.vim

" # VIMRC
" $ cat .vimrc
filetype plugin indent on
set smartindent
"set paste - screws up cindet, switched to smartindent and will experiment
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch
set t_Co=256
syntax on
set background=dark
colorscheme distinguished

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" toggle line numbers with <CNTRL>-N X 2
:nmap <C-N><C-N> :set invnumber<CR>

" magic to make restore of cursor position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
