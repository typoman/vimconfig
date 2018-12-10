if has('python3')
endif
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'haya14busa/incsearch.vim'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ryanoasis/vim-devicons'
Plug 'chiedo/vim-dr-replace'
Plug 'adelarsq/vim-matchit'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'diraol/python-mode', { 'branch': 'fix_six_import' }
Plug 'SirVer/ultisnips'
Plug 'hdima/python-syntax'
Plug 'honza/vim-snippets'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Konfekt/FastFold'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'mg979/vim-visual-multi', { 'branch': 'test'}
Plug 'wellle/targets.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'chaoren/vim-wordmotion'

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
set guifont=BlexMono_Nerd_Font_Mono_Text:h14
set ignorecase
set smartcase
set wildmenu
set foldmethod=indent
set undofile
set undodir=~/.vimUndoHistory
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
let macvim_skip_colorscheme = 1
let mapleader = " "
autocmd FileType python set colorcolumn=180
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nmap <leader>ac :Ack <C-r><C-w><CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>re :History<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>? :Maps<CR>
nnoremap <leader>/ :BLines<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>c :bd<CR>
nnoremap <leader>cc :bd!<CR>
nnoremap <leader>s :w<CR>
nnoremap ]g :GitGutterNextHunk<CR>
nnoremap [g :GitGutterPrevHunk<CR>
" nnoremap ]q :cnext<CR>
nnoremap <Leader>vr :source ~/.vim/vimrc<CR>
nnoremap <Leader>gr :silent execute '!cd ~/.vim;git add *;git commit -am "New changes to the configurations";git push origin master'\|:redraw!<CR>
nnoremap <Leader>rf :w\|:silent execute '!open -a Robofont;robofont -p "%:p"'\|:redraw!<CR>
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap <Leader>vr :source ~/.vim/vimrc<CR>
nnoremap cw ciw
nnoremap ct cit
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
set hidden
set directory^=~/.vimTmp
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
" Quicker window movement
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
" let g:VM_leader = '\'
let g:startify_session_dir = '~/.vim/session'
let g:startify_change_to_dir = 1
let g:startify_session_persistence = 1
set scrolloff=5
set listchars=eol:↵,trail:·,nbsp:·,tab:⇥\
set list
let g:VM_no_meta_mappings = 1
let g:VM_maps = {}
let g:VM_maps["Select All"]        = '<leader>a'
let g:VM_maps["Visual All"]        = '<leader>a'
let g:VM_maps["Align"]             = '<leader>A'
let g:VM_maps["Add Cursor Down"]   = '<C-j>'
let g:VM_maps["Add Cursor Up"]     = '<C-k>'
let g:VM_mouse_mappings             = 1
" let g:textobj_syntax_no_default_key_mappings = 1
" automatically source last used session when no files were given to Vim
" autocmd VimEnter * if exists(':SLoad') && !argc() | SLoad | endif
" autocmd BufWritePost * :SS defaultSession
autocmd VimEnter * if exists(':SLoad') && !argc() | SLoad | endif
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

