set tabstop=4
set ambiwidth=double
set number
set incsearch

set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

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
NeoBundle 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized

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
                        

