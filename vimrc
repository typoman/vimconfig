if has('python3')
endif
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'haya14busa/incsearch.vim'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ryanoasis/vim-devicons'
Plug 'chiedo/vim-dr-replace'
Plug 'yegappan/mru'
Plug 'adelarsq/vim-matchit'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'diraol/python-mode', { 'branch': 'fix_six_import' }
Plug 'hdima/python-syntax'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Konfekt/FastFold'
Plug 'mhinz/vim-startify'

call plug#end()

colorscheme bahman
set background=dark

set relativenumber
" set termguicolors
set bs=2
set mouse=a
set mousehide
set belloff=all
set clipboard=unnamed
set ts=4
set autoindent 
set expandtab
set shiftwidth=4
set cursorline
set showmatch
set termbidi
set encoding=utf-8
set guifont=BlexMono_Nerd_Font_Mono:h14
set ignorecase 
set smartcase
set wildmenu
set foldmethod=indent
let g:pymode = 1
let g:pymode_python = 'python3'
let python_highlight_all=1
let g:pymode_rope = 0
let g:pymode_lint_on_write = 0
let g:pymode_warnings = 1
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:pymode_folding = 0
let mapleader = " "
autocmd FileType python set colorcolumn=180
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nmap <leader>ac :Ack <C-r><C-w><CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>re :MRU<CR>
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>c :bd<CR>
nnoremap <leader>cc :bd!<CR>
nnoremap <leader>s :w<CR>
nnoremap <Leader>vr :source $MYVIMRC<CR>
nnoremap <Leader>gr :silent execute '!cd ~/.vim;git add *;git commit -am "New changes to the configurations";git push origin master'\|:redraw!<CR>
nnoremap <Leader>rf :w\|:silent execute '!open -a Robofont;robofont -p "%:p"'\|:redraw!<CR>
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap <Leader>vr :source .vim/vimrc<CR>
nnoremap cw ciw
nnoremap ct cit
let g:multi_cursor_select_all_word_key = '<leader>a'
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
map <silent> <leader>ss :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
autocmd BufRead,BufNewFile *.md setlocal spell
set spellfile=$HOME/.vim-spell-en.utf-8.add
set complete+=kspell
set tabstop=4
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
set scrolloff=5
