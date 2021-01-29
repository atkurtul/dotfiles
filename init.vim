"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2020 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'

let mapleader = ";"

tmap <Esc> <C-\><C-n>
tmap <C-w> <ESC><C-w>

nmap <C-S-i> :RustFmt<CR>:%s/  / /g<CR>:nohl<CR>
nmap <C-w>p :vsp ~/.config/nvim/init.vim<CR>
nmap <C-w>[ :vsp ~/.SpaceVim.d/init.toml<CR>
nmap <C-w>] :vsp ~/.alacritty.yml<CR>

imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>


nmap <C-Down> }
nmap <C-Up>   {


nmap <C-h> b
nmap <C-j> 4j
nmap <C-k> 4k
nmap <C-l> w


nmap <silent><C-e> <Plug>(coc-definition)
imap <silent><C-e> <ESC><C-e>

nmap <S-W> :FloatermToggle <CR>
imap <S-W> <ESC><S-W>
tmap <S-W> <ESC><S-W>

nmap <leader>4 :vertical resize +5<CR>
nmap <leader>3 :vertical resize -5<CR>
nmap <C-w>e :vsp<CR>:wincmd l<CR>:Explore<CR>
nmap <C-w>t :vsp<CR>:wincmd l<CR>:term<CR>i
nmap <leader>te :term<CR>


syntax on
set guioptions=
set guicursor=
set termguicolors
set cursorline
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
set scrolloff=2
set updatetime=200
set timeout timeoutlen=180 ttimeoutlen=100

let g:airline#extensions#tabline#enabled = 1
let g:floaterm_autoclose=2
let g:cmake_project_generator="Ninja"
let g:asmsyntax = 'nasm'
autocmd BufEnter *.s :setlocal filetype=nasm
