set expandtab
autocmd Filetype php set tabstop=4
autocmd Filetype php set shiftwidth=4
autocmd Filetype javascript set tabstop=2
autocmd Filetype javascript set shiftwidth=2
autocmd Filetype ruby set tabstop=2
autocmd Filetype ruby set shiftwidth=2
autocmd Filetype html set tabstop=2
autocmd Filetype html set shiftwidth=2
autocmd Filetype css set tabstop=2
autocmd Filetype css set shiftwidth=2
"set autocmdtoindent
set ambiwidth=double
set incsearch
set hlsearch
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set t_Co=256
nnoremap <Tab> gt
nnoremap <S-Tab> gT

"NeoBundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

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
syntax on
"colorscheme hybrid
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle has('lua') ? 'Shougo/neocomplete.vim' : 'Shougo/neocomplcache.vim'
  let g:neocomplete#enable_at_startup = 1
if neobundle#is_installed('neocomplete')
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'
   
  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()
   
  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplete#close_popup()
  inoremap <expr><C-e>  neocomplete#cancel_popup()
  " Close popup by <Space>.
  "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
   
  " For cursor moving in insert mode(Not recommended)
  "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
  "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
  "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
  "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
  " Or set this.
  "let g:neocomplete#enable_cursor_hold_i = 1
  " Or set this.
  "let g:neocomplete#enable_insert_char_pre = 1
   
  " AutoComplPop like behavior.
  "let g:neocomplete#enable_auto_select = 1
   
  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let g:neocomplete#enable_auto_select = 1
  "let g:neocomplete#disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
   
  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
elseif neobundle#is_installed('neocomplcache')
  let g:neocompletecache_enable_at_startup = 1
  let g:neocompletecache_enable_ignore_case = 1
  let g:neocompletecache_enable_smart_case = 1
  if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns._ = '\h\w*'
  let g:neocomplcache_enable_camel_case_completion = 1
  let g:neocomplcache_enable_underbar_completion = 1
endif
NeoBundle 'violetyk/neocomplete-php.vim'
let g:neocomplete_php_local = 'ja'
" àÍâÒÇæÇØâ∫ãLÇé¿çs
" :PhpMakeDict ja
NeoBundle 'Townk/vim-autoclose'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
au FileType javascript call JavaScriptFold()
NeoBundleLazy 'mattn/emmet-vim', {'autoload':{'filetypes':['html']}}
"let g:user_emmet_leader_key='<c-t>'
NeoBundleLazy 'vim-scripts/closetag.vim', {'autoload':{'filetypes':['html']}}
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config={'*':{'split':''}}
NeoBundle 'joonty/vdebug'
NeoBundle 'scrooloose/syntastic'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

NeoBundleCheck
call neobundle#end()

"-----------------
"é´èë
"-----------------
:set dictionary=php.dict

