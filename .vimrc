if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'wakatime/vim-wakatime'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'

Plug 'ekalinin/Dockerfile.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

" set number
highlight LineNr ctermfg=grey
syntax on
filetype plugin on

" Keep undo history across sessions, by storing in file.
set undodir=/tmp/.vim/backups
set undofile
