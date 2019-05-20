call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/calendar-vim'
Plug 'rhysd/git-messenger.vim'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
"Plug 'goerz/jupytext.vim' 		"Jupytext plugin to edit ipynb files as python files

call plug#end()

"
" Expand tabs only for python
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

filetype plugin on


"colorscheme codedark
if has('win32')
	set shell=powershell
	set shellcmdflag=-command
else
	let g:vimwiki_list = [{'path': '/media/datanix/code/mdwiki/wiki', 'syntax': 'markdown', 'ext': '.md'}]
endif



set noswapfile " FIx global paste
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

" Jupytext comment color change for now
":hi Comment guifg=#A6C22E


"--------------------------------------------------"
""" KEYBOARD SHORTCUTS """
map <F3> ggVGg?

let mapleader = ","

if has('win32')
else
	" GO TO DIRECTORIES
	map <leader>di :e /home/rocamora/.config/nvim/init.vim<CR>
	map <leader>dc :e /media/datanix/code<CR>
	map <leader>db :e /media/datanix/books<CR>
	map <leader>dd :e /media/datanix<CR>
	map <leader>dr :e /home/rocamora<CR>
endif

" RUN PROGRAMS ON FILE
nmap <leader>r :!python3 % <CR>
nmap <leader>j :!jupytext --to ipynb % --update --output %:r.ipynb <CR>:!jupyter nbconvert --to html --execute %:r.ipynb <CR><CR>:!xdg-open %:r.html<CR>

nmap <leader>f :!firefox<CR>
map <leader>l :nohl<CR>

"let g:user_emmet_leader_key=','

""" Split Management
map <leader>n <C-w>=
map <leader>m <C-w>_

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"--------------------------------------------------"
if has('win32')
else

""" KANBAN BOARD
" Close board tab
map <leader>bc :tabclose<CR>

" Main board: soon, doing, today, done 
map <leader>bb :tabnew /media/datanix/code/mdwiki/wiki/kanban/soon.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/doing.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/today.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/done.md<CR>

" Full board: triage, later, soon, doing, today, done, archive
map <leader>bf :tabnew /media/datanix/code/mdwiki/wiki/kanban/triage.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/later.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/soon.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/doing.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/today.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/done.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/archive.md<CR> 

" Triage board: triage, later, soon, doing
map <leader>bt :tabnew /media/datanix/code/mdwiki/wiki/kanban/triage.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/later.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/soon.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/doing.md<CR> 

" Archiving board: done, archive
map <leader>ba :tabnew /media/datanix/code/mdwiki/wiki/kanban/done.md<CR>:vnew /media/datanix/code/mdwiki/wiki/kanban/archive.md<CR>

endif

"--------------------------------------------------"
if has('win32')
else
map <leader>id1 :!gsettings set org.gnome.desktop.background picture-uri /media/datanix/wallpapers/dva01.jpg<CR><CR>
map <leader>id2 :!gsettings set org.gnome.desktop.background picture-uri /media/datanix/wallpapers/dva02.jpg<CR><CR>
map <leader>id3 :!gsettings set org.gnome.desktop.background picture-uri /media/datanix/wallpapers/dva03.jpg<CR><CR>
map <leader>id4 :!gsettings set org.gnome.desktop.background picture-uri /media/datanix/wallpapers/dva04.jpg<CR><CR>
map <leader>id5 :!gsettings set org.gnome.desktop.background picture-uri /media/datanix/wallpapers/dva05.jpg<CR><CR>
map <leader>id6 :!gsettings set org.gnome.desktop.background picture-uri /media/datanix/wallpapers/dva06.jpg<CR><CR>
map <leader>id7 :!gsettings set org.gnome.desktop.background picture-uri /media/datanix/wallpapers/dva07.jpg<CR><CR>
endif
"--------------------------------------------------"
"

" RUN PROGRAM ON TEXT
"map <leader>i :!i_view32.exe %:p:h<CR>

" RUN PROGRAMS ON FILE
"nmap <leader>r :w<CR>:py3 "%"<CR>
"nmap <leader>h :w<CR>:!chrome.exe "%"<CR>
"nmap <leader>n :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>jupyter nbconvert --to notebook --execute --inplace "%".ipynb<CR>
"nmap <leader>m :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>:!jupyter nbconvert --to html --execute "%".ipynb<CR>:!chrome.exe "%".html<CR>
"nmap <leader>g :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>:!jupyter nbconvert --to pdf --execute "%".ipynb<CR>:!SumatraPDF.exe "%".pdf<CR>

function! AdaptColorscheme()
    highlight clear CursorLine
    highlight Normal ctermbg=none
    highlight LineNr ctermbg=none
    highlight Folded ctermbg=none
    highlight NonText ctermbg=none
    highlight SpecialKey ctermbg=none
    highlight VertSplit ctermbg=none
    highlight SignColumn ctermbg=none
endfunction
autocmd ColorScheme * call AdaptColorscheme()

colorscheme triplejelly
