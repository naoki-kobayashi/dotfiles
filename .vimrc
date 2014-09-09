set expandtab
:autocmd Filetype php set tabstop=4
:autocmd Filetype php set shiftwidth=4
:autocmd Filetype javascript set tabstop=2
:autocmd Filetype javascript set shiftwidth=2
:autocmd Filetype ruby set tabstop=2
:autocmd Filetype ruby set shiftwidth=2
set autoindent
set ambiwidth=double
set incsearch
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

nnoremap <Tab> gt
nnoremap <S-Tab> gT

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"----------------
"NeoBundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on     " Required!

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
set statusline=%{fugitive#statusline()}
"NeoBundle 'altercation/vim-colors-solarized'
"syntax enable
"set background=dark
"colorscheme solarized
NeoBundle 'w0ng/vim-hybrid'
let g:hybrid_use_Xresources = 1
colorscheme hybrid
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Shougo/neocomplete.vim'
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_start_up = 1
let g:neocomplete#enable_smart_case = 1

NeoBundleCheck
"--------------

"inoremap {} {}<Left>
"inoremap [] []<Left>
"inoremap () ()<Left>
"inoremap "" ""<Left>
"inoremap '' ''<Left>
"inoremap <> <><Left>

"-----------------
"é´èë
"-----------------
:set dictionary=php.dict

