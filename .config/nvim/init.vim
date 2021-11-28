call plug#begin("~/.vim/plugged")

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'mariappan/dragvisuals.vim'

call plug#end()

let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>

set background=dark

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

" Debugger
packadd termdebug
let g:termdebug_wide=1

nnoremap <C-k> <cmd>vsplit<cr>
nnoremap <C-q> gT

nnoremap <C-e> gt
xmap <expr> <C-Left> DVB_Drag('left')
xmap <expr> <C-Right> DVB_Drag('right')
xmap <expr> <C-Down> DVB_Drag('down')
xmap <expr> <C-Up> DVB_Drag('up')

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
