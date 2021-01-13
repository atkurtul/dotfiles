syntax on

let mapleader = " "

nnoremap <leader>[ <C-W>v :vert e $HOME/.config/nvim/init.vim<CR>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


"nnoremap <leader>w :wincmd k<CR>
"nnoremap <leader>a :wincmd h<CR>
"nnoremap <leader>s :wincmd j<CR>
"nnoremap <leader>d :wincmd l<CR>

nnoremap <leader>b :cd %:p:h<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
"nnoremap <leader>e :vs<CR> :wincmd l<CR>:term<CR>i
nnoremap <leader>t :vs<CR> :wincmd l<CR>:term<CR>i
nnoremap <leader>te :term<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>q <C-W>q
nnoremap <C-z> :u <CR>
inoremap <C-z> <Esc>:u <CR>a
inoremap <C-r> <Esc><C-r>a

set cursorline
set relativenumber
set number
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smartcase
set noswapfile
set nobackup
set nowritebackup
set incsearch
set signcolumn=yes
set scrolloff=4
set updatetime=180
set timeout timeoutlen=180 ttimeoutlen=100


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}, 'branch': 'release'}
"Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'vhdirk/vim-cmake'
Plug 'francoiscabrol/ranger.vim'
Plug 'timonv/vim-cargo'
"Plug 'voldikss/vim-floaterm'
Plug 'atkurtul/color_coded'
Plug 'tomasiser/vim-code-dark'
Plug 'voldikss/vim-floaterm'
Plug 'rhysd/vim-clang-format'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

set termguicolors
"let g:tokyonight_style = 'storm' "night
"colorscheme tokyonight

colorscheme codedark
let g:cmake_project_generator="Ninja"
"let g:airline#extensions#tabline#enabled = 1
let g:asmsyntax = 'nasm'
let g:floaterm_autoclose=2
let g:color_code_enabled=1
autocmd BufEnter *.s :setlocal filetype=nasm

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

nmap gd <Plug>(coc-definition)
