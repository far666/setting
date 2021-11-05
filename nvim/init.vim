call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'projekt0n/github-nvim-theme'
call plug#end()

colorscheme github_light
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set ruler
set nu
set hlsearch
set ignorecase
set incsearch
set noeb
" go to prev tab
map <S-H> gT
" go to next tab
map <S-L> gt

let g:fzf_action = {
  \ 'enter': 'tab split',
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
