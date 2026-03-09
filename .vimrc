if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fugitive' " Plugin for Git
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ekalinin/Dockerfile.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

set number
highlight LineNr ctermfg=grey
syntax on
filetype plugin on

set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" sets foreground color (ANSI, true-color mode)
let &t_8f = "\e[38;2;%lu;%lu;%lum"

" sets background color (ANSI, true-color mode)
let &t_8b = "\e[48;2;%lu;%lu;%lum"

" set termguicolors

" Keep undo history across sessions, by storing in file.
set undodir=/tmp/.vim/backups
set undofile
