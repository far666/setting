# For Install neo-vim and plugins

## Install neovim
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

## Install nodejs 14.x or higher For Coc
```
sudo apt update
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash
sudo apt-get install -y nodejs
```

## Install Plugin Manager
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Edit neo-vim config
```
mkdir ~/.config/nvim
cp ./nvim/init.vim ~/.config/nvim/.
```

or edit your own, example
```
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf.vim'
call plug#end()

" vim basic setting 
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
" go to prev tab
map <S-H> gT
" go to next tab
map <S-L> gt
```

## Install Plugins
plugin in config
```
:PlugInstall
```

Coc Plugin Install
```
:CocInstall coc-tsserver coc-phpls coc-phpactor coc-php-cs-fixer coc-pairs coc-json
```

and what I think is useful and important
```
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
                              
 " or move one char everytime, I think is useful when select parameter in quotes
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() . "\<C-o>a"
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"                    
```

Fzf config
```
" new tab for enter
let g:fzf_action = {
  \ 'enter': 'tab split',
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
 
```

## Reference
https://thomasventurini.com/articles/install-neovim-05-in-ubuntu/
https://github.com/junegunn/vim-plug
https://github.com/neoclide/coc.nvim
https://github.com/junegunn/fzf.vim
