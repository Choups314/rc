filetype plugin on
syn on
filetype indent on
let g:tex_flavor='latex'

" Launch pathogen
execute pathogen#infect()

"EasyMotion configuration
let g:EasyMotion_do_mapping = 0   "Disable default mappings
" `s{char}{label}
nmap s <Plug>(easymotion-s)
" `s{char}{char}{label}
nmap S <Plug>(easymotion-s2)
" Turn on case sensitive
let g:EasyMotion_smartcase = 1
" JK motions : Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" CoqIDE configuration
let g:CoqIDEDefaultKeyMap=1

" TagBar configuration
nmap <F8> :TagbarToggle<CR>

" VCoq configuration
nmap <F9> :call LaunchC()<CR>
"map <c-h> :call Next()<CR>
nnoremap <c-j> :echo "joy"<CR>

" Load merlin
set rtp+=/usr/local/share/ocamlmerlin/vim

" Classic editors backspace behavior ..
set backspace=indent,start,eol

" Start searching while typing ..
set incsearch

" Display informations of the current cursor position
set ruler
set rulerformat=

" Display number of characters/lines selected in Visual mode
set showcmd

" Status line configuration
set laststatus=2
set statusline=%t    "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ocaml_checkers = ['merlin']
"let g:syntastic_python_checkers = ['python', 'pylint -E']

" Supertab configuration
let g:SuperTabDefaultCompletionType = "context"   " Allow file completion
let g:SuperTabCrMapping=1

" python-mode configuration
let g:pymode_rope_goto_definition_bind = "<C-d>"

" A few custom shorcuts
map <c-x> :close<CR>
