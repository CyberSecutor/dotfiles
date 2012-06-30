set number
syntax on
set background=dark
set tabstop=2 
set softtabstop=2 
set shiftwidth=2
set autoindent
set expandtab

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo


" Restore the cursor to the previous posistion
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

" Use F2 to prepare for paste action
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
