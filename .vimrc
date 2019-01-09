set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/calendar-vim'
Plugin 'kkoenig/wimproved.vim'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/a.vim'

" Windows utils
"Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'tomtom/tlib_vim'

" Code snippets
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'

" Better folding 
Plugin 'tmhedberg/SimpylFold'

" 
Plugin 'vim-scripts/indentpython.vim'

" Code completion
"Bundle 'Valloric/YouCompleteMe'

" Syntax checking / highlighting
Plugin 'w0rp/ale'
"Plugin 'vim-syntastic/syntastic'

" Colorschemes
Plugin 'flazz/vim-colorschemes'
"Plugin 'sheerun/vim-wombat-scheme'			" Both?
"Plugin 'altercation/vim-colors-solarized'	" For GUI
Plugin 'jnurmine/Zenburn'					" For terminal

" PEP 8 checking (python)
Plugin 'nvie/vim-flake8'

" Image viewing (requires python)
" Plugin 'ashisha/image.vim'

" Image viewing (requires python)
" Plugin 'ashisha/image.vim'

" Fuzzy search
Plugin 'kien/ctrlp.vim'

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
" TODO: Review this guy

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

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
set guifont=DejaVu\ Sans\ Mono:h12 " Good
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
" nmap <leader>r :w<CR>:!python - 
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

let python_highlight_all=1
syntax on

if has('gui_running')
  set background=dark
  "colorscheme wombat
  colorscheme solarized
else
  "colorscheme wombat
  "colorscheme zenburn
  colorscheme molokai
endif

" Solarized toggle
"call togglebg#map("<F5>")
