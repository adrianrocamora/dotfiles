call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
Plug 'vimwiki/vimwiki'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'scrooloose/nerdcommenter' 
Plug 'tpope/vim-fugitive' 
Plug 'mattn/calendar-vim'
Plug 'rhysd/git-messenger.vim'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'	"python required
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
"Plug 'masukomi/vim-markdown-folding'

"Plug 'goerz/jupytext.vim' 		"Jupytext plugin to edit ipynb files as python files
"
" Language support 
Plug 'nikvdp/ejs-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jelera/vim-javascript-syntax'
Plug 'tpope/vim-jdaddy' "Json text objects
Plug 'w0rp/ale'

" Formater
Plug 'Chiel92/vim-autoformat'




Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

"NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
Plug 'gaalcaras/ncm-R'
Plug 'ncm2/ncm2-cssomni'


let g:vim_markdown_folding_disabled = 1

let g:airline_section_a = ''
let g:airline_section_y = ''

set background=dark

" Web browser
Plug 'yuratomo/w3m.vim'

"Plug 'tweekmonster/braceless.vim' " text objects and more for Python and other indented code
let g:jsx_ext_required = 0

let g:ale_linters = {
\	'javascript': [''],
\}

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()

"save current buffer
nnoremap <leader>t :Toch<cr>

"save current buffer
nnoremap <leader>w :w<cr>

"replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

" Expand tabs only for python
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

filetype plugin on

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}

if has('win32')
	set shell=powershell
	set shellcmdflag=-command
else
	let g:vimwiki_list = [{'path': '/media/rocamora/datawin/mdwiki/wiki', 'syntax': 'markdown', 'ext': '.md'}]
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

let mapleader="\<Space>"
"let mapleader = ","

if has('win32')
else
	" GO TO DIRECTORIES
	map <leader>di :e /home/rocamora/.config/nvim/init.vim<CR>
	map <leader>dc :e /home/rocamora/code<CR>
	map <leader>db :e /home/rocamora/books<CR>
	map <leader>dd :e /home/rocamora<CR>
	map <leader>dr :e /home/rocamora<CR>
endif

" RUN PROGRAMS ON FILE
nmap <leader>r :cd %:h<CR>:!python3 %<CR>
nmap <leader>j :!jupytext --to ipynb % --update --output %:r.ipynb <CR>:!jupyter nbconvert --to notebook --execute --inplace %:r.ipynb <CR><CR>:!jupyter nbconvert --to html %:r.ipynb <CR><CR>:!xdg-open %:r.html<CR><CR>

nmap <leader>f :!firefox %<CR>

" Show Table of Content
nmap <leader>t :Toch<CR>



let g:user_emmet_leader_key=','

map <leader>l :nohl<CR>

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

""" Update vimwiki


endif
"--------------------------------------------------"

    
if has('win32')
else

    
""" KANBAN BOARD
" Close board tab
map <leader>bc :tabclose<CR>

" Main board: soon, doing, today, done 
map <leader>bb :tabnew /home/rocamora/code/mdwiki/wiki/index.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban-done.md<CR>
"map <leader>bb :tabnew /home/rocamora/code/mdwiki/wiki/kanban/today.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/done.md<CR>
"map <leader>bb :tabnew /home/rocamora/code/mdwiki/wiki/kanban/soon.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/doing.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/today.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/done.md<CR>

" Full board: triage, later, soon, doing, today, done, archive
"map <leader>bf :tabnew /home/rocamora/code/mdwiki/wiki/kanban/triage.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/later.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/soon.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/doing.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/today.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/done.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/archive.md<CR> 

" Triage board: triage, later, soon, doing
"map <leader>bt :tabnew /home/rocamora/code/mdwiki/wiki/kanban/triage.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/later.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/soon.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/doing.md<CR> 

" Archiving board: done, archive
"map <leader>ba :tabnew /home/rocamora/code/mdwiki/wiki/kanban/done.md<CR>:vnew /home/rocamora/code/mdwiki/wiki/kanban/archive.md<CR>

endif
"--------------------------------------------------"

" RUN PROGRAM ON TEXT
"map <leader>i :!i_view32.exe %:p:h<CR>

" RUN PROGRAMS ON FILE
"nmap <leader>r :w<CR>:py3 "%"<CR>
"nmap <leader>h :w<CR>:!chrome.exe "%"<CR>
"nmap <leader>n :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>jupyter nbconvert --to notebook --execute --inplace "%".ipynb<CR>
"nmap <leader>m :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>:!jupyter nbconvert --to html --execute "%".ipynb<CR>:!chrome.exe "%".html<CR>
"nmap <leader>g :w<CR>:!jupytext --to ipynb "%" --update --output "%".ipynb <CR>:!jupyter nbconvert --to pdf --execute "%".ipynb<CR>:!SumatraPDF.exe "%".pdf<CR>

"function! AdaptColorscheme()
	"highlight clear CursorLine
	"highlight Normal ctermbg=none
	"highlight LineNr ctermbg=none
	"highlight Folded ctermbg=none
	"highlight NonText ctermbg=none
	"highlight SpecialKey ctermbg=none
	"highlight VertSplit ctermbg=none
	"highlight SignColumn ctermbg=none
"endfunction
"autocmd ColorScheme * call AdaptColorscheme()
"colorscheme jellyx
"colorscheme triplejelly
"colorscheme codeblocks_dark

"--------------------------------------------------"
" Random wallpapers by category on Gnome
function! Wallpapers(dir, mode)
python3 << EOF

import os
import vim
import random
from PIL import Image, ImageDraw

path = '/home/rocamora/wallpapers/' + vim.eval("a:dir")
mode = vim.eval("a:mode")

if mode == 'tall':
	panel_w = 1000
	panel_h = 1000
	img_wp = Image.new('RGB', (panel_w*2, panel_h), color='black')

	files = []
	# r=root, d=directories, f = files
	for r, d, f in os.walk(path):
		for file in f:
			if '.jpg' or '.png' or '.webp' in file:
				files.append(os.path.join(r, file))
	random_choices = random.sample(files, k=2)

	img_left = Image.open(random_choices[0])
	img_left.thumbnail((panel_w, panel_h))
	img_right = Image.open(random_choices[1])
	img_right.thumbnail((panel_w, panel_h))

	img_left_x0 = 0 + (panel_w - img_left.width)//2
	img_left_y0 = 0 + (panel_h - img_left.height)//2

	img_right_y0 = 0 + (panel_h - img_right.height)//2
	img_right_x0 = panel_w + (panel_w - img_right.width)//2

	img_wp.paste(img_left, (img_left_x0, img_left_y0))
	img_wp.paste(img_right, (img_right_x0, img_right_y0))

elif mode == 'wide':
	panel_w = 2000
	panel_h = 1000
	img_wp = Image.new('RGB', (panel_w, panel_h), color='black')

	files = []
	# r=root, d=directories, f = files
	for r, d, f in os.walk(path):
		for file in f:
			if '.jpg' or '.png' in file:
				files.append(os.path.join(r, file))
	random_choices = random.sample(files, k=1)

	img = Image.open(random_choices[0])
	img.thumbnail((panel_w, panel_h))

	img_x0 = (panel_w - img.width)//2
	img_y0 = (panel_h - img.height)//2

	img_wp.paste(img, (img_x0, img_y0))

elif mode == 'color':
	img_wp = Image.new('RGB', (2000, 1000), color='black')
else:
	pass

wp_fullpath = '/home/rocamora/wallpapers/wp.png'
img_wp.save(wp_fullpath)
os.system('gsettings set org.gnome.desktop.background picture-uri ' + wp_fullpath)
#os.system('feh --bg-fill ' + wp_fullpath)
#feh --bg-fill path/l --bg-fill path/r


EOF
endfunction
command! -nargs=0 Wallpapers call Wallpapers() 

map <leader>ii :call Wallpapers('nw', 'color')<CR>

map <leader>iw :call Wallpapers('nw', 'wide')<CR>
map <leader>ib :call Wallpapers('b', 'tall')<CR>
map <leader>id :call Wallpapers('d', 'tall')<CR>
map <leader>is :call Wallpapers('s', 'tall')<CR>
map <leader>ix :call Wallpapers('x', 'tall')<CR>
map <leader>ir :call Wallpapers('r', 'tall')<CR>
"map <leader>in :call Wallpapers('n')<CR>
"map <leader>iw :call Wallpapers('w')<CR>
"--------------------------------------------------"
fun! ShowEquation()
    "exec ":'<,'>! python3 -c \"import sys;print('rie-chan ' + sys.stdin.read())\""
    "exec ":'<,'>! python3 /home/rocamora/code/vim-equations/main.py"

python3 << EOF

import sys
import os
import string
import vim

#in_list = sys.stdin.read()
in_list = vim.current.line

#equation_in = in_list.rstrip()

equation_in = in_list

if equation_in[0] == '#':
    equation_in = equation_in[2:]

equation_in.replace("$$", "")

equation_escaped = equation_in.translate(str.maketrans({"_":  r"\_",
														" ":  r"\ ",
														"=":  r"\=",
														"^":  r"\^",
														"(":  r"\(",
														")":  r"\)",
														"]":  r"\]",
														"[":  r"\[",
														"{":  r"\{",
														"}":  r"\}",
														"$":  r"\$",
														"+":  r"\+",
														"\\": r"\\",
														}))

# equation_escaped = equation_escaped.translate({ord(c): None for c in string.whitespace})
print(equation_escaped)

os.system('/home/rocamora/apps/l2p -i ' + equation_escaped + '  >/dev/null 2>&1')
os.system('feh -x eqn.png  >/dev/null 2>&1')

EOF
endfun
noremap <leader>e :call ShowEquation()<CR>

"noremap <leader>t :echo 'Current time is ' . strftime('%c')<CR>




