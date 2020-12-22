syntax on

let mapleader = " "

nnoremap <leader>[ <C-W>v :vert e $HOME/.config/nvim/init.vim <CR>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
nnoremap <leader>t :term ./cc.sh \| ./package.sh <CR> 
nnoremap <leader>d :wincmd l<CR>
nnoremap <leader>w :wincmd k<CR>
nnoremap <leader>a :wincmd h<CR>
nnoremap <leader>s :wincmd j<CR>
nnoremap <leader>b :cd %:p:h<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
"nnoremap <leader>e :tabe %:h<CR> 
nnoremap <leader>e :vs<CR> :cd %:p:h<CR>:wincmd l<CR> :Explore %:h<CR> <C-w><C-r> 
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>l :tabnext<CR>
"nnoremap <leader>e :NERDTreeToggle<CR> :vert resize 15<CR>
nnoremap <leader>q <C-W>q
inoremap <C-s> <Esc> :w <CR>
nnoremap <C-z> :u <CR>
inoremap <C-z> <Esc>:u <CR>a
inoremap <C-r> <Esc><C-r>a

set scrolloff=8
set relativenumber
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
set scrolloff=8
set updatetime=180
set timeout timeoutlen=180 ttimeoutlen=100
call plug#begin('~/.vim/plugged')
"Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}, 'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'alessandroyorba/alduin'
Plug 'cocopon/iceberg.vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'vhdirk/vim-cmake'
Plug 'francoiscabrol/ranger.vim'
Plug 'arakashic/chromatica.nvim'
call plug#end()

colorscheme vimbrant
let g:chromatica#enable_at_startup=1
let g:chromatica#libclang_path='/usr/lib/x86_64-linux-gnu/libclang-11.so.1'
let g:cmake_project_generator="Ninja"
let g:airline#extensions#tabline#enabled = 1
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)
nmap rr <Plug>(coc-rename)
nmap g[ <Plug>(coc-diagnostic-prev)
nmap g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart
