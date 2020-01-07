call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdcommenter' 
Plug 'tpope/vim-fugitive' 
Plug 'flazz/vim-colorschemes'

Plug 'mattn/calendar-vim'
Plug 'rhysd/git-messenger.vim'
Plug 'mattn/emmet-vim'

call plug#end()

" Expand tabs only for python
autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python set tabstop=2|set shiftwidth=2|set expandtab

" Add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

filetype plugin on

let g:vimwiki_list = [{'path': '~/code/mdwiki/wiki', 'syntax': 'markdown', 'ext': '.md'}]


set noswapfile " FIx global paste
inoremap <silent>  <S-Insert>  <C-R>+

syntax on

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prcs
set autoindent
set visualbell
set nu

let mapleader="\<Space>"

"save current buffer
nnoremap <leader>w :w<cr>

"replace the word under cursor
nnoremap <leader>c :%s/\<<c-r><c-w>\>//g<left><left>

"clear highlighting
map <leader>l :nohl<CR>

" Go to directories
map <leader>di :e ~/code/dot_files/init.vim<CR>
map <leader>dc :e ~/code<CR>
map <leader>db :e ~/books<CR>
map <leader>dd :e ~<CR>

" Run programs on file
nmap <leader>r :cd %:h<CR>:!python3 %<CR>
nmap <leader>n :cd %:h<CR>:!node --experimental-modules %<CR>
nmap <leader>t :cd %:p:h<cr>:!npm test<cr>
nmap <leader>s :cd %:p:h<cr>:!npm start<cr>

nmap <leader>m :!bash ~/code/dot_files/play_random_song.sh<CR>

""" Split Management
map <leader>= <C-w>=
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright
map <leader>bb :tabnew ~/code/mdwiki/wiki/kanban-done.md<CR>

let g:user_emmet_leader_key=','

map <leader>bc :tabclose<CR>
"colorscheme codedark
"colorscheme wombat256dave
"colorscheme molokaidark
"colorscheme earth
colorscheme wombat256mod

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

nnoremap <leader>gg :w<CR>
nnoremap <leader>qq :q<CR>
nnoremap <leader>wq :wq<CR>
set nonumber

" Word counter
nnoremap <space>wc :!wc -w %<CR>

" FUGITIVE VIM BINDINGS
nnoremap <space>gac :Git add %:p<CR>:Gcommit -m "Automated commit"<CR>
nnoremap <space>gss :Gstatus<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>gps :Git push<CR>
nnoremap <space>gpl :Git pull<CR>
"nnoremap <space>ga :Git add %:p<CR><CR>
"nnoremap <space>gc :Gcommit -v -q<CR>
"nnoremap <space>gt :Gcommit -v -q %:p<CR>
"nnoremap <space>ge :Gedit<CR>
""nnoremap <space>gr :Gread<CR>
"nnoremap <space>gw :Gwrite<CR><CR>
"nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
"nnoremap <space>gg :Ggrep<Space>
"nnoremap <space>gm :Gmove<Space>
"nnoremap <space>gb :Git branch<Space>
"nnoremap <space>go :Git checkout<Space>
"nnoremap <space>gps :Dispatch! git push<CR>
"nnoremap <space>gpl :Dispatch! git pull<CR>

" RUN PROGRAMS ON FILE
nmap <leader>r :cd %:h<CR>:!python3 %<CR>
nmap <leader>n :cd %:h<CR>:!node --experimental-modules %<CR>
nmap <leader>t :cd %:p:h<cr>:!npm test<cr>
nmap <leader>s :cd %:p:h<cr>:!npm start<cr>
