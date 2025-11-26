" --- Basic Settings ---
set nocompatible                " Required for Vim features to work
set backspace=indent,eol,start  " Makes backspace behave reasonably
set cindent                     " Smart auto-indenting
set tabstop=2                   " Sets spaces to 2 for tabs
set shiftwidth=2                " Number of spaces for each step
set cc=80                       " Places bar on 80th char
set expandtab                   " Converts tabs into spaces
set number                      " Show line numbers
set relativenumber              " Show numbers relative to current position
syntax on                       " Show syntax highlighting
set ruler                       " Show the current cursor position
set incsearch                   " Highlight matches as you type
set hlsearch                    " Highlight all matches for current search

" Automatically insert closing pairs
set cinoptions=j1,:0,h1,B0,g0,>1,+1,C0,L0,W0,m1,O0,N0,s1,U0,w1,k1,{0,}0,^0,=0
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
