syntax on

let mapleader = " "

"packadd termdebug
"let g:termdebug_wide = 163
"
"function Debug_program(prog)
"  packadd termdebug
"  "echom a:prog
"  Termdebug a:prog <CR>
" <ESC>
" windcmd h <CR> 
" windcmd j <CR>
"  <ESC> :q! <CR>
"endfunction


nnoremap <leader>[ :vsp ~/.config/nvim/init.vim<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


nnoremap <C-e> <Plug>(coc-definition)
nnoremap <C-E> <Plug>(coc-definition)
nnoremap <S-W> :FloatermToggle <CR>
"nnoremap <C-r>  q
"nnoremap <leader>r @
"nnoremap @ <Nop>
"nnoremap q <C-w>q


nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>e :vsp<CR>:wincmd l<CR>:Explore<CR>
nnoremap <leader>t :vsp<CR>:wincmd l<CR>:term <CR>
nnoremap <leader>te :term<CR>
"nnoremap <leader>h :tabprevious<CR>
"nnoremap <leader>l :tabnext<CR>
nnoremap <C-z> :u <CR>
inoremap <C-z> <Esc>:u <CR>a

tnoremap <Esc> <C-\><C-n>
"tnoremap <M-[> <Esc>
"tnoremap <C-v><Esc> <Esc>

set termguicolors
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
Plug 'joonty/vdebug'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'vhdirk/vim-cmake'
Plug 'francoiscabrol/ranger.vim'
Plug 'timonv/vim-cargo'
Plug 'rust-lang/rust.vim'
Plug 'voldikss/vim-floaterm'
Plug 'atkurtul/color_coded'
Plug 'tomasiser/vim-code-dark'
Plug 'voldikss/vim-floaterm'
Plug 'rhysd/vim-clang-format'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

let g:tokyonight_style = 'storm' "night
colorscheme tokyonight

"colorscheme codedark
let g:cmake_project_generator="Ninja"
let g:airline#extensions#tabline#enabled = 1
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

