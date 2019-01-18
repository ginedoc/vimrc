set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

" Move the swap file location to protect against CVE-2017-1000382
if exists('$XDG_CACHE_HOME')
	let &g:directory=$XDG_CACHE_HOME
else
	let &g:directory=$HOME . '/.cache'
endif
let &g:directory.='/vim/swap//'
" Create swap directory if it doesn't exist
if ! isdirectory(expand(&g:directory))
  silent! call mkdir(expand(&g:directory), 'p', 0700)
endif

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

" meine
:set nu
:filetype plugin on
:syntax on
:set mouse=a
:set tabstop=4


"taglist
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <silent> <F8> :TlistToggle<CR>
