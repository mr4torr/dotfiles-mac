""""""" Plugin management stuff """""""
set nocompatible
" filetype off
filetype plugin indent on

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'szw/vim-ctrlspace'

Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'

Plugin 'ap/vim-css-color'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'heartsentwined/vim-emblem'
Plugin 'smolnar/vim-ember-script'
Plugin 'tpope/vim-cucumber'
Plugin 'slim-template/vim-slim'
Plugin 'dag/vim-fish'

Plugin 'mattn/gist-vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'Rip-Rip/clang_complete'
Plugin 'thoughtbot/vim-rspec'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'


" Custom plugins...
" EasyMotion - Allows <leader><leader>(b|e) to jump to (b)eginning or (end)
" of words.
Plugin 'easymotion/vim-easymotion'
" Ctrl-P - Fuzzy file search
Plugin 'kien/ctrlp.vim'
" Neomake build tool (mapped below to <c-b>)
" Plugin 'benekastah/neomake'
" Remove extraneous whitespace when edit mode is exited
" Plugin 'thirtythreeforty/lessspace.vim'

" Screen splitter.  Cool, but doesn't work with nvim.
"Plugin 'ervandew/screen'

" LaTeX editing
" Plugin 'LaTeX-Box-Team/LaTeX-Box'

" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

" Tab completion
Plugin 'ervandew/supertab'


" After all plugins...
call vundle#end()
filetype plugin indent on



""""""" Jedi-VIM """""""
" Don't mess up undo history
"let g:jedi#show_call_signatures = "0"


""""""" SuperTab configuration """""""
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
function! Completefunc(findstart, base)
    return "\<c-x>\<c-p>"
endfunction

" call SuperTabChain(Completefunc, '<c-n>')

" let g:SuperTabCompletionContexts = ['g:ContextText2']


""""""" NERDTree   """""""
let NERDTreeShowHidden=1


""""""" Syntastic  """""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_html_tidy_exec = 'tidy5'

""""""" General coding stuff """""""
set t_Co=256
" set term=xterm-256color

" Highlight 80th column
 set wrap
 set colorcolumn=80
 set colorcolumn=+1
 set hidden
 set ttyfast
 set lazyredraw
 set colorcolumn=0

 set showmode
 set expandtab
 set showbreak=↪
 set novisualbell

 set ignorecase " ignore case when searching
 set hlsearch   " highlight search matches
 set incsearch " search as you type
 set gdefault  " global matching is default
 set smartcase " use smartcase, when search query starts with Uppercase, turn off case insensitive search<Paste>
" Always show status bar
" set laststatus=2
" Let plugins show effects after 500ms, not 4s
"set updatetime=500
" Disable mouse click to go to position
set mouse=a
set paste
" Don't let autocomplete affect usual typing habits
" set completeopt=menuone,preview,noinsert
set completeopt=longest,menu,preview

" Let vim-gitgutter do its thing on large files
let g:gitgutter_max_signs=10000

let &showbreak="\u21aa "

" If your terminal's background is white (light theme), uncomment the following
" to make EasyMotion's cues much easier to read.
" hi link EasyMotionTarget String
" hi link EasyMotionShade Comment
" hi link EasyMotionTarget2First String
" hi link EasyMotionTarget2Second Statement


""""""" Setting Themes """""""
syntax enable
set number showmatch
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
"let python_highlight_all = 1
let base16colorspace=256

let g:hybrid_use_iTerm_colors = 1

let g:jellybeans_use_term_italics = 1
let g:jellybeans_use_lowcolor_black = 0

set background=dark
" colorscheme material-theme
" colorscheme hybrid
colorscheme jellybeans
" colorscheme twilight

      " vim-airline
      set laststatus=2
      let g:airline_symbols = {}
      let g:airline_theme = 'powerlineish'
      let g:airline_powerline_fonts=1
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr  = ''

""""""" Keybindings """""""
" Set up leaders
let mapleader=","
let maplocalleader="\\"

" Mac OS X option-left / right
noremap â b
noremap æ e
inoremap â <C-o>b
inoremap æ <C-o>e<right>
" Note - this required binding in preferences (Cmd-,) option+backspace to
" escape+z.
" Why this one is complicated - <C-o> at end of line moves cursor by one
" character, which means a trailing character could be left.
inoremap <expr> ú col('.')>1 ? 'T<Left><C-o>db<Delete>' : '<Backspace>T<Left><c-o>db<Delete>'
" Requires binding option+forward delete to escape
inoremap ø <C-o>dw

" Linux / windows ctrl+backspace ctrl+delete
" Note that ctrl+backspace doesn't work in Linux, so ctrl+\ is also available
imap <C-backspace> ú
imap <C-\> ú
imap <C-delete> ø

imap <C-X> "+x
imap <C-C> "+y
imap <C-V> "+gP

vmap <C-C> "+y
nmap <C-V> "+p


" Arrow keys up/down move visually up and down rather than by whole lines.  In
" other words, wrapped lines will take longer to scroll through, but better
" control in long bodies of text.
" NOTE - Disabled since <leader><leader>w|e|b works well with easymotion
noremap <up> gk
noremap <down> gj

nnoremap <space> :%foldopen<CR>
nnoremap f za
nnoremap F zA

nnoremap <c-s> :w<cr>

"nnoremap <leader>p "+p
"nnoremap <leader>c "+
"nnoremap <leader>y "+y



" Neomake and other build commands (ctrl-b)
" nnoremap <C-b> :w<cr>:Neomake<cr>

autocmd BufNewFile,BufRead *.tex,*.bib noremap <buffer> <C-b> :w<cr>:new<bar>r !make<cr>:setlocal buftype=nofile<cr>:setlocal bufhidden=hide<cr>:setlocal noswapfile<cr>
autocmd BufNewFile,BufRead *.tex,*.bib imap <buffer> <C-b> <Esc><C-b>

" function! TrimWhiteSpace()
"    if !&binary && &filetype != 'diff'
"        normal mz
"        normal Hmy
"       %s/^\s\+$//e
"        normal 'yz<CR>
"        normal `z
"    endif
"endfunction

"autocmd FileWritePre * :call TrimWhiteSpace()
"autocmd FileAppendPre * :call TrimWhiteSpace()
"autocmd FilterWritePre * :call TrimWhiteSpace()
"autocmd BufWritePre * :call TrimWhiteSpace()
