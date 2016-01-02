imap jj <Esc>
set ignorecase

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'kshenoy/vim-signature'
Bundle 'vim-scripts/buflist'

" Optional:
" Bundle 'honza/vim-snippets'
Bundle 'isRuslan/vim-es6'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

map <F1> :NERDTreeToggle<CR>
imap <F1> :NERDTreeToggle<CR>
nmap <F1> :NERDTreeToggle<CR>

autocmd FileType html setlocal sw=2 ts=2 et
autocmd FileType javascript setlocal sw=2 ts=2 et
autocmd FileType yaml setlocal sw=2 ts=2 et
autocmd FileType ruby setlocal sw=2 ts=2 et

set t_Co=256

let mapleader=','
let maplocalleader=','

" Enable powerline
set laststatus=2

" Better visual mode indentation
vnoremap > >gv
vnoremap < <gv

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set noshowmode
set relativenumber number

if &term =~ "xterm\\|rxvt"
  " Insert
  let &t_SI  = "\<Esc>]12;gray\x7"
  let &t_SI .= "\<Esc>[6 q"
  " Normal
  let &t_EI  = "\<Esc>]12;green\x7"
  let &t_EI .= "\<Esc>[2 q"
  autocmd VimLeave * silent !echo -ne "\033]112\007"
elseif &term =~ "screen-256color"
  " Insert
  let &t_SI  = "\<Esc>Ptmux;\<Esc>\<Esc>]12;gray\x7\<Esc>\\"
  let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[6 q\<Esc>\\"
  " Normal
  let &t_EI  = "\<Esc>Ptmux;\<Esc>\<Esc>]12;blue\x7\<Esc>\\"
  let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
  autocmd VimLeave * silent !printf "\033Ptmux;\033\033]12;grey\007\033\\"
endif

map <C-l> <C-W>l
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-j> <C-W>j

