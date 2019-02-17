call plug#begin('~/.local/share/nvim/plugged')
" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/calendar-vim'
Plug 'goerz/jupytext.vim' 		"Jupytext plugin to edit ipynb files as python files
Plug 'skywind3000/asyncrun.vim'

call plug#end()

"
" Expand tabs only for python
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

filetype plugin on


"let g:vimwiki_list = [{'path': '~/doc/wiki/', 'path_html': '~/doc/wiki/html/'}]
let g:vimwiki_list = [{'path': 'D:/Dropbox/mdwiki/', 'syntax': 'markdown', 'ext': '.md'}]
"let g:vimwiki_folding='list' " too slow! "still too slow in neovim!!!

colorscheme monokai-phoenix

set shell=powershell
set shellcmdflag=-command

set noswapfile

" FIx global paste
inoremap <silent>  <S-Insert>  <C-R>+

syntax on

" Expand tabs only for python
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" Add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prcs
set autoindent
set visualbell
set nu
"
" Jupytext comment color change for now
:hi Comment guifg=#A6C22E


""" KEYBOARD SHORTCUTS """
"
" Remove syntax highlighting after search 
nnoremap <silent> <C-l> :nohl<CR><C-l>
map <F3> ggVGg?

let mapleader = ","

" GO TO DIRECTORIES
map <leader>dc :e D:/code/adrian<CR>
map <leader>db :e D:/books<CR>

" RUN PROGRAM ON TEXT
map <leader>i :!i_view32.exe %:p:h<CR>

" RUN PROGRAMS ON FILE
"nmap <leader>r :w<CR>:py3 "%"<CR>
"nmap <leader>h :w<CR>:!chrome.exe "%"<CR>
"nmap <leader>n :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>jupyter nbconvert --to notebook --execute --inplace "%".ipynb<CR>
"nmap <leader>m :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>:!jupyter nbconvert --to html --execute "%".ipynb<CR>:!chrome.exe "%".html<CR>
"nmap <leader>g :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>:!jupyter nbconvert --to pdf --execute "%".ipynb<CR>:!SumatraPDF.exe "%".pdf<CR>

" Quick run via <F5>
nnoremap <F5> :call <SID>compile_and_run()<CR>

function! s:compile_and_run()
	exec 'w'
	if &filetype == 'c'
		exec "AsyncRun! gcc % -o %<; time ./%<"
	elseif &filetype == 'cpp'
		exec "AsyncRun! g++ -std=c++11 % -o %<; time
		./%<"
	elseif &filetype == 'java'
		exec "AsyncRun! javac %; time java %<"
	elseif &filetype == 'sh'
		exec "AsyncRun! time bash
		%"
	elseif &filetype ==
		'python'
		exec "AsyncRun!
		time python %"
	endif
endfunction
