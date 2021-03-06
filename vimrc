let g:ruby_path = '~/.rbenv/bin/ruby'

set shell=/bin/bash " Make vim use sh instead of system's default (plays nice with fish)

set colorcolumn=80 " Show a red column matching 80 char width

filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
syntax on

" set clipboard=unnamed

set number
call pathogen#infect()
filetype plugin indent on
set hidden

set expandtab
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.ino set filetype=cpp
au BufRead,BufNewFile *.hamlc set filetype=haml
au BufRead,BufNewFile *.fish set filetype=sh
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
" au BufRead,BufNewFile *.go set filetype=go

autocmd BufWritePre * :%s/\s\+$//e
set ruler
set rulerformat=%l,%c%V%=%P
set laststatus=2

set wildmenu
set wildmode=list:longest,list:full

" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*./git/*
set wildignore+=*/tmp/cache/*,*.so,*.swp,*.zip,*./git/*
set wildignore+=*/.git/*

" RailsConnector Repo
set wildignore+=*/rails_connector/dumps/*
set wildignore+=*/rails_connector/integration_test/test_app/tmp/*

" Mati
set wildignore+=*/matisojka/public/*

set sw=2 " no of spaces for indenting
set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..

let g:jellybeans_use_lowcolor_black = 0
colorscheme jellybeans

" Ragtag
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

" Leader
let mapleader = '\'

map <leader>w :w<cr>
map <leader>qq :q!<cr>
map <leader>q :q<cr>

map <leader>rm :Rmodel<space>

" Switch between split screens
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

map <leader>s :sp<cr>
map <leader>v :vs<cr>

" NerdTREE
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<cr>

" Abbreviations
ab bpry binding.pry
ab spech require 'spec_helper'

" Mappings
nmap , $p

" Enable visualbell instead of sound
set vb

" Clojure

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

