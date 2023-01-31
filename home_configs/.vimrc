command W w !sudo tee % > /dev/null

set title
set titlestring=%f%<\ %M%R%=%l/%L titlelen=70 " make the string at the top of the terminal f is file M and R are changed and readonly flag l is line number L is num of line num



" indentation of new line = ident. of line above
set ignorecase
set smartcase

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END 

set number
set smartindent
set tabstop=4
set shiftwidth=4
set hidden
syntax on
inoremap <C-H> <C-o>db
inoremap <C-BS> <C-o>db
inoremap <C-kDel> <C-o>de
hi CursorLineNR cterm=standout
set timeoutlen=3000
set ttimeoutlen=100
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
