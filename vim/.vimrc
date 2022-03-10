" ~/.vimrc
" Basic Syntax and folds {{{
syntax on
filetype plugin indent on

" Set foldmethod
set foldmethod=marker
" }}}
" Enable Pathogen {{{
" Enable syntax highlighting
execute pathogen#infect()
" }}}
" Visual Improvements {{{
" Set absolute number for current line; relative everywhere else ('hybrid numbering')
set relativenumber
set number
set ruler

" Highlight searches
set hlsearch

" Show search progress
set incsearch

" Add a vertical bar
set colorcolumn=80

" Set colorscheme
colorscheme gruvbox

" The terminal has 256 colors
set t_Co=256

" Make splits open on the bottom and to the left
set splitbelow
set splitright

" Make quickfix window possible to read
highlight QuickFixLine ctermbg=8 guibg=gray

" Hightlight cursor line
set cursorline
" }}}
" Tabs {{{
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
" }}}
" Syntax-specific Autocmds {{{
autocmd BufNewFile,BufRead *.md,*.txt :set spell
" }}}
" General Keymaps {{{
let mapleader = " "

" Make CTRL-BS instead of CTRL-W because CTRL-W is a terrible key sequence
" (Cannot remap from C-BS to C-W because of terminal Vim)
noremap! <C-BS> <C-W>
noremap! <C-H> <C-W>

" Allow jk key sequence to stop typing so you don't have to reach to escape
inoremap jk <ESC>

" Get text inserted
nnoremap gi `[v`]

" Clear search highlighting by pressing enter
nnoremap <leader><CR> :nohlsearch<CR>
" }}}
" Whitespace {{{
" Show Tabs and extra spaces
set list
set listchars=tab:\|\ ,trail:-

" Remove trailing whitespace
nnoremap <LEADER>ts :%s/\(\s\+\)$//g<CR>
" }}}
" Misc {{{
" Prevent delay in urxvt from escape/O/etc...
set timeoutlen=1000 ttimeoutlen=0

" Make backspace work as expected
set backspace=2

" Make j and k not skip wrapped lines, unless given a count
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
vnoremap <expr> j v:count == 0 ? 'gj' : 'j'
vnoremap <expr> k v:count == 0 ? 'gk' : 'k'

" Correct line endings
set fileformat=unix

" Automatically indent on files by default
set autoindent

" Set encoding to UTF-8
set enc=utf-8
" }}}
