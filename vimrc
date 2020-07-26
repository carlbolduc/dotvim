let $JAVA_TOOL_OPTIONS="-javaagent:/Users/carl/.vim/vendor/lombok.jar -Xbootclasspath/a:/Users/carl/.vim/vendor/lombok.jar"
let g:env = toupper(substitute(system('uname'), '\n', '', ''))
" Configure PATH based on MacPort
if g:env =~ 'DARWIN'
    set pythonthreedll=/opt/local/Library/Frameworks/Python.framework/Versions/3.7/Python
    set rtp+=/opt/local/share/fzf/vim
    if (has("termguicolors"))
        set termguicolors
    endif
else
    set rtp+=~/.fzf
endif

set smartcase
set incsearch
set tags=./tags;
set include=
set path=.,,

set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.
set mouse=a
set backspace=2
syntax on
set number
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set statusline =
" Buffer number
set statusline +=[%n]
" File description
set statusline +=%f\ %h%m%r%w
" Filetype
set statusline +=%y                                                  
" Name of the current function (needs taglist.vim)
"set statusline +=\ [Fun(%{Tlist_Get_Tagname_By_Line()})]
set statusline +=\ [Fun(%{tagbar#currenttag('%s','')})]
" Name of the current branch (needs fugitive.vim)
set statusline +=\ %{fugitive#statusline()}
" Date of the last time the file was saved
set statusline +=\ %{strftime(\"[%d/%m/%y\ %T]\",getftime(expand(\"%:p\")))} 
" Total number of lines in the file
set statusline +=%=%-10L
" Line, column and percentage
set statusline +=%=%-14.(%l,%c%V%)\ %P

autocmd bufnewfile,bufread *.jsx set filetype=javascript.javascriptreact

colorscheme one

"set wildignore+=**/node_modules/** 
"set wildmenu
"set wildmode=longest:full,full

"let b:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
"let g:prettier#config#single_quote = 'false'


"" bindings
let mapleader=" "
"nnoremap <leader>f :find *

nmap <leader>d :set background=dark<CR>
nmap <leader>l :set background=light<CR>

nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>s :GFiles --exclude-standard --others --cached<cr>
nmap <Leader>r :Tags<CR>
nmap <Leader>k :Ack! "\b<cword>\b" <CR>
nmap <Leader>t :bp\|bd #<CR>
nmap <Leader>w :YcmCompleter FixIt<CR>
nmap <Leader>y :YcmCompleter 

nmap <silent> gd :YcmCompleter GoTo<CR>
nmap <silent> gr :YcmCompleter GoToReferences<CR>

