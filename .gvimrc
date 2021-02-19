if has("gui_running")
  if has("gui_gtk3")
    set guifont=FiraCode\ 11
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Highly recommended to set tab keys to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab " always expands tab to spaces.
set wrap " wraps longs lines to screen size

" Do not keep a backup or .swp file.
set nobackup
set nowritebackup
set noswapfile
set nocompatible " Use Vim defaults (much better!), Vi is for 70's programmers!
set viminfo='20,\"50 " read/write a .viminfo file, don't store more than 50 

if ($OS == 'Windows_NT')
    " Windows specific settings

    " 1.1 Restore cursor to file position in previous editing session 
    " http://vim.wikia.com/wiki/VimTip80
    set viminfo='10,\"100,:20,%,n$VIM/_viminfo

    " 1.2 executing OS command within Vim
    set shell=c:\Windows\system32\cmd.exe
    " shell command flag
    set shellcmdflag=/c
else
    " Unix specific settings
    " 1.1 : pick it from $HOME/.viminfo
    set viminfo='10,\"100,:20,%,n~/.viminfo

    " 1.2 executing OS command within Vim
    set shell=/bin/zsh
endif

" Display setting
win 92 32 " The window height
set laststatus=2 " Show the status line even if only one file is being edited
set ruler " Show ruler
set go-=T " Following line removes the toolbar

" How to Do 90% of What Plugins Do (With Just Vim)
" https://www.youtube.com/watch?v=XA2WjJbmmoM 
"
" Search down into subfolders
" Provides tab-competition
set path+=**

" Display all matching files when we tab complete
set wildmenu
