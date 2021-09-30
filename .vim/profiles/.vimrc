set number
set autoindent
set hlsearch
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set backspace=indent,eol,start
inoremap { {<CR>}<Esc>ko<Tab>
inoremap ( ()<Esc>i
inoremap [ []<Esc>i

" NERDTree config
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
