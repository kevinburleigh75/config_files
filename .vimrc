" allow per-project .vimrc files,
" but don't let them do anything too weird
set exrc
set secure

" don't create a bunch of temp files
set nobackup
set nowritebackup
set noswapfile

" always show the filename on the status line
set laststatus=2
set statusline+=%F

" set up pathogen for package management
"execute pathogen#infect()

" enable the file explorer
set nocompatible
filetype plugin on

" reload .vimrc
map <C-w>r :source ~/.vimrc<CR>

" set netrw sort sequence
let g:netrw_sort_sequence='[\/]$,*'

" enable syntax highlighting
syntax on

" set/toggle line wrapping on
set wrap
nnoremap <C-w>w :set wrap!<CR>

" knock off some stoopid auto-comment crap
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set smartindent

" fix the behavior of backspace
set backspace=indent,eol,start

" undo/redo
nnoremap u :undo<CR>
nnoremap U :redo<CR>

" stop removing indentation from comments in python
inoremap # X<c-h>#

" make line changes apply to display lines, not real lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
map <Up> k
map <Down> j

" e to move forward, E to move backward
nnoremap E b

" toggle virtual edit mode
nnoremap <C-w>v :set virtualedit=all<CR>
nnoremap <C-w>V :set virtualedit=<CR>

" always how the cursor position
set ruler

" show/toggle line numbers
nnoremap <C-w>n :set number!<CR>
set number
set numberwidth=5

" keep cursor away from top/bottom of window (when possible)
set scrolloff=5

" set behavior of tab completion
set wildmode=longest,list

" show incomplete commands
set showcmd

" managing splits
set splitbelow
set splitright

" cycling through buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nmap     <silent> <C-w>' :bnext<CR>
nmap     <silent> <C-w>; :bprevious<CR>
 
" cycling through tabs
nmap <silent> [t gT
nmap <silent> ]t gt
nmap <silent> <C-w>t <C-w>T
nmap <silent> <C-w>[ gT
nmap <silent> <C-w>] gt

" allow cycling of unsaved buffers without a bang(!)
set hidden

" make window management a lot like what I use for tmux
nnoremap <silent> <C-w><Bslash> :vsplit<CR>
nnoremap <silent> <C-w>- :split<CR>
nnoremap <silent> <C-w>z <C-w>\|<C-w>_

" create new tabs
nmap <silent> <C-w>t :tabe<CR>
"" C-w T

" allow <C-w>E to move back a word


" clang_complete
" let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'

" tabs and spaces
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab

" show specific line widths
"set colorcolumn=80
"highlight ColorColumn ctermbg=darkgrey

" color theme
"color my_invisibles
"color elflord
color default

" show invisibles
nmap <C-w>i :set list!<CR>
set listchars=tab:»\ ,trail:·,nbsp:·,eol:¬
set list

