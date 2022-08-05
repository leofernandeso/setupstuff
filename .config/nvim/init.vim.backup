set encoding=utf8
set splitright
set relativenumber
set number
set background=dark
set hlsearch

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab
set backspace=indent,eol,start
set clipboard=unnamedplus

"Line highlighting
set cursorline

set autoindent
hi CursorLine cterm=NONE ctermbg=darkgrey

map <Esc>q <M-q>
map <Esc>e <M-e>
map <Esc>0 <M-0>
map <Esc>1 <M-1>
map <Esc>2 <M-2>
map <Esc>3 <M-3>
map <Esc>4 <M-4>
map <Esc>5 <M-5>
map <Esc>6 <M-6>
map <Esc>7 <M-7>
map <Esc>8 <M-8>
map <Esc>9 <M-9>

" Tab switching
nnoremap <M-q> gT
nnoremap <M-e> gt
inoremap <M-q> <Esc>gT
inoremap <M-e> <Esc>gt

noremap <M-1> 1gt
noremap <M-2> 2gt
noremap <M-3> 3gt
noremap <M-4> 4gt
noremap <M-5> 5gt
noremap <M-6> 6gt
noremap <M-7> 7gt
noremap <M-8> 8gt
noremap <M-9> 9gt

"" Plugins installation

call plug#begin()

" Airline
Plug 'https://github.com/vim-airline/vim-airline'

" Tmux airline (status bar)
Plug 'https://github.com/edkolev/tmuxline.vim'

" Nerdtree (directory tree)
Plug 'https://github.com/preservim/nerdtree'

" Commentary helper
Plug 'https://github.com/tpope/vim-commentary'

" Airline themes
Plug 'vim-airline/vim-airline-themes'

call plug#end()


"" Plugins config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
