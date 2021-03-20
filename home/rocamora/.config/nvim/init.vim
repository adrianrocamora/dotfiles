call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
Plug 'scrooloose/nerdcommenter' 
Plug 'tpope/vim-fugitive' 
Plug 'rhysd/git-messenger.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'goerz/jupytext.vim' 		"Jupytext plugin to edit ipynb files as python files
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'yuratomo/w3m.vim'
Plug 'sunaku/vim-dasht'
"Plug 'xuhdev/vim-latex-live-preview'	"python required
Plug 'vim-latex/vim-latex'	"python required


Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
"Plug 'gcmt/taboo.vim'
"Plug 'skammer/vim-css-color'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'groenewege/vim-less'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'cakebaker/scss-syntax.vim'
"Plug 'lervag/vimtex'
"if has('win32')
"else
"endif
"Plug 'masukomi/vim-markdown-folding'
"
" Language support 
"Plug 'nikvdp/ejs-syntax'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'MaxMEllon/vim-jsx-pretty'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'tpope/vim-jdaddy' "Json text objects
"Plug 'w0rp/ale'

"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'

" Formater
"Plug 'Chiel92/vim-autoformat'


"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'

"if has('win32')
"else
"" enable ncm2 for all buffers
""autocmd BufEnter * call ncm2#enable_for_buffer()
"endif

"" IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect

""NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'

"Plug 'ncm2/ncm2-jedi'
"Plug 'ncm2/ncm2-pyclang'
"Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
"Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
"Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
"Plug 'gaalcaras/ncm-R'
"Plug 'ncm2/ncm2-cssomni'


"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_folding_disabled = 0

let g:airline_section_a = ''
let g:airline_section_y = ''

set background=dark


"Plug 'tweekmonster/braceless.vim' " text objects and more for Python and other indented code
"let g:jsx_ext_required = 0

"let g:ale_linters = {
"\	'javascript': [''],
"\}



call plug#end()

" Expand tabs only for python
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType python set tabstop=2|set shiftwidth=2|set expandtab

filetype plugin on

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}

if has('win32')
	set shell=powershell
	set shellcmdflag=-command
	"let g:vimwiki_list = [{'path': 'D:/mdwiki/wiki', 'syntax': 'markdown', 'ext': '.md'}]
else
	let g:vimwiki_list = [{'path': '~/code/mdwiki/wiki', 'syntax': 'markdown', 'ext': '.md'}]
endif



set noswapfile " FIx global paste
inoremap <silent>  <S-Insert>  <C-R>+

syntax on

" Expand tabs only for python
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType python set tabstop=2|set shiftwidth=2|set expandtab

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

"save current buffer
nnoremap <leader>w :w<cr>

"replace the word under cursor
nnoremap <leader>c :%s/\<<c-r><c-w>\>//g<left><left>

"clear highlighting
map <leader>l :nohl<CR>

" GO TO DIRECTORIES
if has('win32')
	"map <leader>di :e ~/AppData/Local/nvim/init.vim<CR>
	"map <leader>dc :e D:/code<CR>
	"map <leader>db :e D:/books<CR>
	"map <leader>dd :e ~/<CR>
else
	"map <leader>di :e ~/.config/nvim/init.vim<CR>
	map <leader>di :e ~/code/dotfiles/home/rocamora/.config/nvim/init.vim<CR>
	map <leader>dc :e ~/code<CR>
	map <leader>dw :e ~/code/writing/<CR>
	map <leader>db :e ~/books<CR>
	map <leader>dd :e ~<CR>
endif

" Word counter
nnoremap <leader>wc :!wc -w %<CR>
nnoremap <leader>go :Goyo<CR>

" FUGITIVE VIM BINDINGS
nnoremap <leader>gac :Git add %<CR>:Gcommit -v -q -m "Updates"<CR>
nnoremap <leader>gps :Git push<CR>
nnoremap <leader>gl :cd %:h<CR>:!git log --oneline --graph<CR>

nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gss :Gstatus<CR>
nnoremap <leader>gcc :Gcommit -v -q<CR>
nnoremap <leader>gcm :Gcommit -v -q -m "Updates"<CR>
nnoremap <leader>gd :Gdiff<CR>
"nnoremap <leader>gaa :Git add %:p<CR>
"nnoremap <leader>ge :Gedit<CR>
"nnoremap <leader>gr :Gread<CR>
"nnoremap <leader>gw :Gwrite<CR><CR>
"nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
"nnoremap <leader>gg :Ggrep<Space>
"nnoremap <leader>gm :Gmove<Space>
"nnoremap <leader>gb :Git branch<Space>
"nnoremap <leader>go :Git checkout<Space>
"nnoremap <leader>gps :Dispatch! git push<CR>
"nnoremap <leader>gpl :Dispatch! git pull<CR>
"nnoremap <leader>gc :Gcommit -v -q<CR>

" RUN PROGRAMS ON FILE
nmap <leader>p :cd %:h<CR>:!pdflatex %<CR> 
nmap <leader>r :cd %:h<CR>:!python3 %<CR>
nmap <leader>n :cd %:h<CR>:!node --experimental-modules %<CR>
nmap <leader>t :cd %:p:h<cr>:!npm test<cr>
nmap <leader>s :cd %:p:h<cr>:!npm start<cr>
" nmap <leader>j :!jupytext --to ipynb % --update --output %:r.ipynb <CR>:!jupyter nbconvert --to notebook --execute --inplace %:r.ipynb <CR><CR>:!jupyter nbconvert --to html %:r.ipynb <CR><CR>:!xdg-open %:r.html<CR><CR>

nmap <leader>f :!firefox %<CR>

nmap <leader>m :!bash /home/isla/code/dotfiles/home/rocamora/util/play_random_song.sh<CR>

"nmap <leader>p :!termdown 15m && !bash /home/rocamora/code/dot_files/play_random_song.sh<CR>


" Show Table of Content
"nmap <leader>t :Toch<CR>



let g:user_emmet_leader_key=','


""" Split Management
map <leader>= <C-w>=
"map <leader>m <C-w>_

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

""" KANBAN BOARD
" Close board tab
map <leader>bc :tabclose<CR>
    
if has('win32')
" Main board: soon, doing, today, done 
"map <leader>bb :tabnew D:/mdwiki/wiki/index.md<CR>:vnew D:/mdwiki/wiki/kanban-done.md<CR>
else
" Main board: soon, doing, today, done 
map <leader>bb :tabnew ~/code/mdwiki/wiki/kanban-done.md<CR>
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

	wp_fullpath = '/home/rocamora/wallpapers/w.png'
	img_wp.save(wp_fullpath)
	os.system('feh --bg-fill ' + wp_fullpath)

elif mode == 'wide':
	files = []
	# r=root, d=directories, f = files
	for r, d, f in os.walk(path):
		for file in f:
			if '.jpg' or '.png' in file:
				files.append(os.path.join(r, file))
	random_choices = random.sample(files, k=1)

	wp_fullpath = random_choices[0]
	print(wp_fullpath)
	os.system('feh --bg-fill ' + wp_fullpath)

elif mode == 'color':
	img_wp = Image.new('RGB', (2000, 1000), color='black')
	wp_fullpath = '/home/rocamora/wallpapers/w.png'
	img_wp.save(wp_fullpath)
	os.system('feh --bg-fill ' + wp_fullpath)
	#os.system('feh --bg-fill ~/code/wallpapers/cute01.png')
else:
	pass

EOF
endfunction
command! -nargs=0 Wallpapers call Wallpapers() 

map <leader>ii :call Wallpapers('nw', 'color')<CR>

map <leader>inw :call Wallpapers('nw', 'wide')<CR>
map <leader>icw :call Wallpapers('cw', 'wide')<CR>
map <leader>iaw :call Wallpapers('aw', 'wide')<CR>
map <leader>ibw :call Wallpapers('bw', 'wide')<CR>
map <leader>isw :call Wallpapers('sw', 'wide')<CR>
map <leader>iww :call Wallpapers('ww', 'wide')<CR>

map <leader>ia :call Wallpapers('a', 'tall')<CR>
map <leader>iaw :call Wallpapers('aw', 'wide')<CR>

map <leader>ix :call Wallpapers('x', 'tall')<CR>
map <leader>ixa :call Wallpapers('ax', 'wide')<CR>
map <leader>ixw :call Wallpapers('xw', 'wide')<CR>

map <leader>ib :call Wallpapers('b', 'tall')<CR>
map <leader>id :call Wallpapers('d', 'tall')<CR>
map <leader>is :call Wallpapers('s', 'tall')<CR>
map <leader>ir :call Wallpapers('r', 'tall')<CR>
"map <leader>in :call Wallpapers('n')<CR>
"map <leader>iw :call Wallpapers('w')<CR>
"--------------------------------------------------"
fun! ShowEquation()
    "exec ":'<,'>! python3 -c \"import sys;print('rie-chan ' + sys.stdin.read())\""
    "exec ":'<,'>! python3 ~/code/vim-equations/main.py"

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

os.system('~/apps/l2p -i ' + equation_escaped + '  >/dev/null 2>&1')
os.system('feh -x eqn.png  >/dev/null 2>&1')

EOF
endfun
noremap <leader>e :call ShowEquation()<CR>

"noremap <leader>t :echo 'Current time is ' . strftime('%c')<CR>

if has('win32')
colorscheme jellyx
else
"colorscheme py-darcula
"colorscheme codedark
"colorscheme wombat256dave
"colorscheme molokaidark
"colorscheme earth
endif

" Buffer magic
noremap <leader>b :ls<cr>:b<space>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Exit neovim terminal with ESC
:tnoremap <Esc> <C-\><C-n>

"set clipboard=unnamed
"set clipboard=unnamedplus
"set clipboard^=unnamedplus
set clipboard^=unnamed

let g:w3m#lang = 'en_US'

set background=dark
"set tabstop=4 shiftwidth=4 noexpandtab
"autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set noexpandtab
"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
:nnoremap - :ls<cr>:b<space>
set nonumber

" 2-way windows and wsl clipboard magic
set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }
