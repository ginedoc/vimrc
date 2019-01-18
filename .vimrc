set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'steffanc/cscopemaps.vim'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'Tagbar'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" ...
call vundle#end()
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
":PluginList          - list configured plugins
":PluginInstall(!)    - install (update) plugins
":PluginSearch(!) foo - search (or refresh cache first) for foo
":PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

" back to last opened
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" meine
:set nu
:filetype plugin on
:syntax on
:syntax on
:set shiftwidth=4
:set softtabstop=4
:set encoding=utf-8
:set autoindent
:set mouse=a
:set tabstop=4
:set clipboard=unnamed

" nerdtree
:let NERDTreeMinimalUI=1
:let NERDTreeDirArrows=1
:map <silent><C-l> :NERDTreeFind<CR>
:map <C-o> :NERDTreeToggle<CR>

" you complete me
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_file=1
let g:ycm_confirm_extra=0
let g:ycm_server_python_interpreter = 'python3'
nnoremap <F2>: YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5>: YcmForceCompileAndDiagnostics<CR>

" asynchoronous linting (ale)
:map <C-j> :ALEGoToDefinition<CR>

" airline
:let g:airline_powerline_fonts=1
:let g:airline_theme='distinguished'
:let g:airline#extensions#ale#enabled=1

" Tagbar
:nmap <F8> :TagbarToggle<CR>

" AutoPair
:let g:AutoPairs= {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}

" ctags
set tags=tags
