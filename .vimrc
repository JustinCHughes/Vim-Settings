" --- Basic Settings ---
set nocompatible                " Required for Vim features to work
set backspace=indent,eol,start  " Makes backspace behave reasonably
set cindent                     " Smart auto-indenting
set tabstop=2                   " Sets spaces to 2 for tabs
set shiftwidth=2                " Number of spaces for each step
set softtabstop=2
set cc=100                      " Places bar on 80th char
set expandtab                   " Converts tabs into spaces
set number                      " Show line numbers
set relativenumber              " Show numbers relative to current position
syntax on                       " Show syntax highlighting
set ruler                       " Show the current cursor position
set incsearch                   " Highlight matches as you type
set hlsearch                    " Highlight all matches for current search

" Map Caps Lock to escape
nnoremap nn <Esc>

" Change navigation mappings
nnoremap <C-h> <C-w>p
nnoremap <C-j> <C-w>n
nnoremap <C-k> <C-w>e
nnoremap <C-l> <C-w>a

" Clear highlighting
nnoremap <space> :noh<cr>

" Automatically insert closing pairs
" set cinoptions=j1,:0,h1,B0,g0,>1,+1,C0,L0,W0,m1,O0,N0,s1,U0,w1,k1,{0,}0,^0,=0
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

inoremap <expr> } getline('.')[col('.') - 1] == '}' ? "\<Right>" : "}"
inoremap <expr> ] getline('.')[col('.') - 1] == ']' ? "\<Right>" : "]"
inoremap <expr> ) getline('.')[col('.') - 1] == ')' ? "\<Right>" : ")"
inoremap <expr> " getline('.')[col('.') - 1] == '"' ? "\<Right>" : "\""
inoremap <expr> ' getline('.')[col('.') - 1] == "'" ? "\<Right>" : "'"

inoremap <expr> <CR> strpart(getline('.'), col('.') - 2, 1) =~ '[\{\(\[\"]' ? "\<CR>\<C-O>O" : "\<CR>"""""'"])}]''')''))

function! NewLine()
  return "\<C-O>O"
endfunction

" Automatically set/unset paste mode when text is pasted
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

function! XTermPasteBegin()
  set pastetoggle=<F2>
  set paste
    return ""
endfunction

" Only run this if the terminal supports bracketed paste
if &term =~ "xterm"
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
endif

" Override filetype settings to ensure 2-space indentation
autocmd FileType * setlocal shiftwidth=2 softtabstop=2
