
" Configure PATH based on MacPort
set pythonthreedll=/opt/local/Library/Frameworks/Python.framework/Versions/3.7/Python
set rtp+=/opt/local/share/fzf/vim

set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.
syntax on
set number
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd bufnewfile,bufread *.jsx set filetype=javascript.javascriptreact

if (has("termguicolors"))
    set termguicolors
endif
colorscheme one

"set path+=**
"set wildignore+=**/node_modules/** 
"set wildmenu
"set wildmode=longest:full,full

"let b:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
"let g:prettier#config#single_quote = 'false'





"" bindings
let mapleader=" "
"nnoremap <leader>f :find *

nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>s :GFiles --exclude-standard --others --cached<cr>
nmap <Leader>r :Tags<CR>
nmap <Leader>k :Ack! "\b<cword>\b" <CR>
nmap <Leader>t :bp\|bd #<CR>

nmap <silent> gd :YcmCompleter GoTo<CR>
nmap <silent> gr :YcmCompleter GoToReferences<CR>

"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
