let g:env = toupper(substitute(system('uname'), '\n', '', ''))
" Configure PATH based on MacPort
if g:env =~ 'DARWIN'
    setglobal pythonthreedll=/opt/local/Library/Frameworks/Python.framework/Versions/3.7/Python
    setglobal rtp+=/opt/local/share/fzf/vim
    if (has("termguicolors"))
        setglobal termguicolors
    endif
else
    setglobal rtp+=~/.fzf
endif

setglobal smartcase
setglobal incsearch
setglobal tags=./tags;
setglobal include=
setglobal path=.,,

setglobal backupdir=~/.vim/tmp//,.
setglobal directory=~/.vim/tmp//,.
setglobal mouse=a
setglobal backspace=2
syntax on
setglobal number
filetype plugin indent on
setglobal tabstop=4
setglobal softtabstop=4
setglobal shiftwidth=4
setglobal expandtab

setglobal laststatus=2
setglobal showtabline=2
if empty(&g:statusline)
  setglobal statusline=[%n]\ %<%.99f\ %y%h%w%m%r%=%-14.(%l,%c%V%)\ %P
endif
setglobal titlestring=%{v:progname}\ %{tolower(empty(v:servername)?'':'--servername\ '.v:servername.'\ ')}%{fnamemodify(getcwd(),':~')}%{exists('$SSH_TTY')?'\ <'.hostname().'>':''}
setglobal iconstring=%{tolower(empty(v:servername)?v:progname\ :\ v:servername)}%{exists('$SSH_TTY')?'@'.hostname():''}

autocmd bufnewfile,bufread *.jsx setglobal filetype=javascript.javascriptreact

colorscheme one

"setglobal wildignore+=**/node_modules/** 
"setglobal wildmenu
"setglobal wildmode=longest:full,full

"let b:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
"let g:prettier#config#single_quote = 'false'


"" bindings
let mapleader=" "
"nnoremap <leader>f :find *

nmap <leader>d :setglobal background=dark<CR>
nmap <leader>l :setglobal background=light<CR>

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

