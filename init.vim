syntax on

let mapleader = ";"


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


imap <C-b> <ESC>cw
imap ;; <ESC>
tmap ;; <ESC>
tmap <Esc> <C-\><C-n>

nmap <C-z> :u<CR>
imap <C-z> <ESC>:u<CR>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

nnoremap <C-q> q
nnoremap q <Nop>

tmap <C-w> <ESC><C-w>

nmap <C-w>p :vsp ~/.config/nvim/init.vim<CR>
nmap <C-w>] :vsp ~/.tmux.conf<CR>
nmap <C-w>[ :vsp ~/.alacritty.yml<CR>

imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

nmap <silent><C-e> :w<CR><Plug>(coc-definition)
imap <silent><C-e> <ESC>:w<CR><C-e>

nmap <S-W> :FloatermToggle <CR>
imap <S-W> <ESC><S-W>
tmap <S-W> <ESC><S-W>

nmap <leader>+ :vertical resize +5<CR>
nmap <leader>- :vertical resize -5<CR>
"nmap <leader>e :vsp<CR>:wincmd l<CR>:Explore<CR>
nmap <C-w>t :vsp<CR>:wincmd l<CR>:term<CR>i
nmap <leader>te :term<CR>
nmap <leader>e :vsp<CR>:wincmd l<CR>:RangerCurrentDirectory<CR>

"set termguicolors
set cursorline
"set relativenumber
set number
"set noerrorbells
"set tabstop=2 softtabstop=2
"set shiftwidth=2
"set expandtab
set smartindent
"set smartcase
"set noswapfile
"set nobackup
"set nowritebackup
"set incsearch
"set signcolumn=yes
"set scrolloff=2
"set updatetime=180
"set timeout timeoutlen=180 ttimeoutlen=100

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}, 'branch': 'release'}
Plug 'ryuta69/coc-perl', {'do': 'yarn install && yarn build'}
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'vhdirk/vim-cmake'
Plug 'francoiscabrol/ranger.vim'
Plug 'timonv/vim-cargo'
Plug 'rust-lang/rust.vim'
Plug 'voldikss/vim-floaterm'
"Plug 'atkurtul/color_coded'
Plug 'tomasiser/vim-code-dark'
Plug 'voldikss/vim-floaterm'
Plug 'rhysd/vim-clang-format'
Plug 'ghifarit53/tokyonight-vim'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'junegunn/fzf'
call plug#end()

"let g:tokyonight_style = 'storm' "'night'
"colorscheme tokyonight
let g:airline#extensions#tabline#enabled = 1


colorscheme codedark


let g:floaterm_autoclose=2
let g:cmake_project_generator="Ninja"
let g:asmsyntax = 'nasm'
autocmd BufEnter *.s :setlocal filetype=nasm

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }
