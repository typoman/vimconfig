if has('python3')
endif
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'| " fodler tree explorere
Plug 'vim-syntastic/syntastic'| " shows syntax erros for code
Plug 'tomtom/tcomment_vim'| " adds commenting commands using g<motion>
Plug 'haya14busa/incsearch.vim'| " highlights the matched search using /
Plug 'airblade/vim-gitgutter'| " shows the changes in the code in a git repo
" Plug 'tpope/vim-fugitive'| " git commands inside vim
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-repeat'| " adds better repeating for plugins when you use the . commands
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'| " change inside the tags and quotes using cs'
Plug 'michaeljsmith/vim-indent-object'| " move easier across indents
Plug 'ryanoasis/vim-devicons'| "Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plug 'chiedo/vim-dr-replace'
Plug 'adelarsq/vim-matchit'| " use % keystrokes to match pairs of stuff that enclose a text
Plug 'diraol/python-mode', { 'branch': 'fix_six_import' }
Plug 'SirVer/ultisnips'| " make snippets
Plug 'hdima/python-syntax'
Plug 'honza/vim-snippets'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Konfekt/FastFold'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
" Plug 'mg979/vim-visual-multi', { 'branch': 'test'}
Plug 'terryma/vim-multiple-cursors'
Plug 'wellle/targets.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'chaoren/vim-wordmotion'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'terryma/vim-expand-region'
Plug 'wincent/terminus'
Plug 'mbbill/undotree'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'tmsvg/pear-tree'
Plug 'TaDaa/vimade'

call plug#end()

colorscheme bahman
set background=dark
set autochdir
autocmd BufEnter * silent! lcd %:p:h
set lazyredraw
set ttyfast
set textwidth=80
set bs=2
set mouse=a
set mousehide
set belloff=all
set clipboard=unnamed
set autoindent
set number
set expandtab
set shiftwidth=4
set showmatch
set re=1
set termbidi
set encoding=utf-8
set ignorecase
set guifont=BlexMono\ Nerd\ Font\ Mono:h14
set smartcase
set wildmenu
set foldmethod=indent
set undofile
set noswapfile
set undodir=~/.vimUndoHistory
cabbrev help tab help
let g:pymode = 1
let g:pymode_rope_completion = 0
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
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nmap <leader>ac :Ack <C-r><C-w><CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>rw :DrAll | " replaces the word under cursor
nnoremap Y y$
nnoremap <buffer> <leader>r :exec '!python3' shellescape(@%, 1)<cr>
nnoremap <M-a> :echo "aaaasdasd"<CR>
nnoremap <leader>j :jumps<CR>
nnoremap H ^
nnoremap <C-A> ggVG
nnoremap J $
nnoremap <leader>re :History<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>? :Maps<CR>
nnoremap <leader>/ :BLines<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>c :bd<CR>
nnoremap <CR> :nohlsearch<CR>:set cul cuc<cr>:sleep 50m<cr>:set nocul nocuc<cr>/<BS>
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
nnoremap <CRA-j> :m .+1<CR>==
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
function ToggleWrap()
 if (&wrap == 1)
   set nowrap
 else
   set wrap
 endif
endfunction

nnoremap <leader>w :call ToggleWrap()<CR>
" nnoro! <leader>w ^[:call ToggleWrap()<CR>
nnoremap <leader>h :Helptags<CR>
set showcmd 
nnoremap ZZ :set ssop+=localoptions<CR> :SS defaultSession<CR> :qa<CR>
nnoremap <leader>ag :Ag <c-r>=expand("<cword>")<cr><cr>
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> / incsearch#go(<SID>config_easyfuzzymotion())
" fix tab for ycm and ultsnip:
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
