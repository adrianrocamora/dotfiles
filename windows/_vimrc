"Rocamora Vimrc file
"
" Maintainer:	John Rocamora <johnrocamora@gmail.com>
" Last change:	2014 Jan 19
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"     for MS-DOS and Win32:  $VIM\_vimrc

"set backupdir=~/.vim/backup/ "sets to null directory
"set backupdir=$VIMRUNTIME/../backup/
"set directory=$VIMRUNTIME/../backup/

"call pathogen#infect()

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'
"Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/calendar-vim'
Plugin 'kkoenig/wimproved.vim'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/a.vim'

" Windows utils
Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'tomtom/tlib_vim'

" Code snippets
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Better folding 
Plugin 'tmhedberg/SimpylFold'

" 
Plugin 'vim-scripts/indentpython.vim'

" Code completion
Bundle 'Valloric/YouCompleteMe'

" Syntax checking / highlighting
Plugin 'w0rp/ale'
"Plugin 'vim-syntastic/syntastic'

" Colorschemes
Plugin 'sheerun/vim-wombat-scheme'			" Both?
Plugin 'altercation/vim-colors-solarized'	" For GUI
Plugin 'jnurmine/Zenburn'					" For terminal
Plugin 'flazz/vim-colorschemes'

" PEP 8 checking (python)
Plugin 'nvie/vim-flake8'

" Image viewing (requires python)
"Plugin 'ashisha/image.vim'

" Fuzzy search
Plugin 'kien/ctrlp.vim'

" Status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'integralist/vim-mypy'


" Clojure
Plugin 'kien/rainbow_parentheses.vim'


" Jupytext plugin to edit ipynb files as python files
Plugin 'goerz/jupytext.vim'


"Plugin 'scrooloose/syntastic'
"Plugin ''	html emmet spk?

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""set breakindent
set ffs=unix,dos
set ff=unix
set fileformats=dos
set fileformats+=dos


"":colorscheme elflord
":colorscheme wombat

set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
set noswapfile

map <F3> ggVGg?

"set nocompatible
"filetype plugin on
syntax on

"set softtabstop=4

" Expand tabs only for python
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" Add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" TODO: Review this guy

" Removing to test issue when opening python files
"au BufNewFile,BufRead *.py
    "\ set tabstop=4
    "\ set softtabstop=4
    "\ set shiftwidth=4
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prcs
"On Windows
"set guifont=DejaVu\ Sans\ Mono:h12 " Good
"set guifont=DejaVu\ Sans\ Mono:h10
"set guifont=DejaVu\ Sans\ Mono:h12 " Good
"set guifont=LucidaConsole:h9
"set guifont=Monaco:h14
"set guifont=Andale\ Mono:h18
"set guifontwide=NSimsun:h10
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start

set noeol

set laststatus=2
"set relativenumber
"set undofile

set wrap!
"set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

"Help 'formatoptions'
set fo-=or
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Line numbers
:set nu
":set nu!

" Denoobifier
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <C-space> <Esc>

" Kill the capslock when leaving insert mode.

" Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
for c in range(char2nr('A'), char2nr('Z'))
  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor

autocmd InsertLeave * set iminsert=0

"No help
"inoremap <F1> <ESC>
"nnoremap <F1> <ESC>
"vnoremap <F1> <ESC>

" Remap to make faster closing of vim
"nnoremap ; :

" Change leader
let mapleader = ","

" Remap Escape
"inoremap jj <ESC>
imap jj <ESC>

" Run python on current file

" Old
"nmap <leader>r :w<CR>:!python - 

"autocmd BufRead *.py nmap <leader>r :!python "%"<CR>
"autocmd FileType html nmap <leader>r :!chrome.exe "%"<CR>
"autocmd FileType python nmap <leader>r :!python "%"<CR>

"nmap <leader>h :w<CR>:!chrome.exe "%"<CR>
":set makeprg=python\ %

" Window splitting
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Commenting blocks of code.
"autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"autocmd FileType conf,fstab       let b:comment_leader = '# '
"autocmd FileType tex              let b:comment_leader = '% '
"autocmd FileType mail             let b:comment_leader = '> '
"autocmd FileType vim              let b:comment_leader = '" '
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"cd C:\Users\johnrocamora\Dropbox\0_Vim

" Python support
"autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"autocmd BufRead *.py nmap <F5> :!python "%"<CR>
"map <leader>r :w<CR>:!<CR>:!python "%"<CR>

" Ctrl-l redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Matlab
"map <leader>r :w<CR>:!"C:\Program Files\MATLAB\R2013a\bin\matlab" -nodesktop -nosplash -r "try, run %:p, pause, catch, end, quit" <CR> <CR>
"map <leader>r :w<CR>:!"C:\Program Files\MATLAB\R2013a\bin\matlab" -automation -r "try, run %:p, pause, catch, end, quit" <CR> <CR>
"map <leader>r :w<CR>:!"C:\Program Files\MATLAB\R2013a\bin\matlab" -automation -r "run %:p, pause, quit" <CR>

"map <leader>p :w<CR>:!runCpp <CR>

"map <leader>j <CR>:!runJava<CR>

"set autochdir

":colorscheme wombat

set wrap
"let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki'}]
"let g:vimwiki_list = [{'path': 'D:/Dropbox/vimwiki'}]
"set ma
"let g:vimwiki_folding='list' " too slow!

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

"WSetAlpha(200)
"let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Flag unnecessary whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
  print('virtualenv activated')
EOF

let python_highlight_all=1
syntax on


if has('gui_running')
  set background=dark
  "colorscheme wombat
  "colorscheme solarized
  colorscheme molokai_dark
else
  "colorscheme wombat
  "colorscheme zenburn
  "colorscheme molokai_dark
  colorscheme monokai
  colorscheme monokai-phoenix
endif

" Solarized toggle
"call togglebg#map("<F5>")

" Hide .pyc files in nerdtree
"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


let g:vimwiki_list = [{'path': 'D:/Dropbox/mdwiki/',
				   \ 'syntax': 'markdown', 'ext': '.md'}]


if has('gui_running')
  set guioptions-=T  " no toolbar
  set lines=60 columns=108 linespace=0
  if has('gui_win32')
    set guifont=DejaVu_Sans_Mono:h10:cANSI
  	"colorscheme elflord
  else
    set guifont=DejaVu\ Sans\ Mono\ 10
  endif
endif

"let &colorcolumn="80,".join(range(120,999),",")
let &colorcolumn = 300

nmap <leader>r :w<CR>:!python "%"<CR>
nmap <leader>h :w<CR>:!chrome.exe "%"<CR>
map <leader>m :lcd %:p:h<CR>:e .<CR>
map <leader>c :e D:/code/adrian<CR>
map <leader>t :WSetAlpha 200<CR>
map <leader>i :!i_view32.exe %:p:h<CR>
nmap <silent> <C-CR> t :leftabove 50vs<CR>:e .<CR>:wincmd h<CR>

" netrw magic
" enable mouse usage. makes it easier to browse multiple tabs
"set mouse=a

" hide netrw top message
let g:netrw_banner=0

" tree listing by default
let g:netrw_liststyle=3

" hide vim swap files
let g:netrw_list_hide='.*\.swp$'

" open files in left window by default
let g:netrw_chgwin=0
"let g:netrw_chgwin=2

let g:netrw_browse_split = 0
    "0 - open files in the sawme window (default)
    "1 - open files in a new horizontal split
    "2 - open files in a new vertical split
    "3 - open files in a new tab
    "4 - open in previous window
"let g:netrw_winsize = 25
"let g:netrw_winsize = 25

" SWITCHING TO control space to support vimwiki
" remap control-enter to open files in new tab

"" remap shift-enter to fire up the sidebar
"nnoremap <silent> <S-CR> :leftabove 50vs<CR>:e .<CR>
"" the same remap as above - may be necessary in some distros
"nnoremap <silent> <C-M> :leftabove 50vs<CR>:e .<CR>
"" remap control-enter to open files in new tab
"nmap <silent> <C-CR> t :leftabove 50vs<CR>:e .<CR>:wincmd h<CR>
"" the same remap as above - may be necessary in some distros
"nmap <silent> <NL> t :leftabove 50vs<CR>:e .<CR>:wincmd h<CR>

":cd %:p:h	Change directory of the currently open file
":lcd %:p:h	Change directory of the currently open file for that file only


"au BufRead *.png,*.jpg,*.jpeg :!i_view32.exe expand('%:p')<CR>
"au BufRead *.png,*.jpg,*.jpeg :!open expand('%:p')<CR>

" Get the full path:
"au BufRead *.png,*.jpg,*.jpeg :echo expand('%:p')

"au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()

"au BufRead *.png,*.jpg,*.jpeg :exe '!open '.expand('<cfile>')<cr>

"function! DisplayImage()
""vim.command("!i_view32.exe")
"vim.eval("!i_view32\.exe <CR>")

"vim.command("!i_view32.exe expand('%:p')<CR>")
"vim.command("let imagefile = expand('%:p')")
"imagefile = vim.eval("imagefile")
"!i_view32.exe expand('%:p')<CR>
"endfunction

" GOOD ENOUGH WITH FULL PATH
"map <leader>i :!i_view32.exe <cfile><CR>

"map <leader>i :!i_view32.exe %<CR>
