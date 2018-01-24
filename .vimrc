"
" Vim configurations - Niemisami - 2017
"
" Basic setup inspired by
" http://vim.wikia.com/wiki/Example_vimrc


set nocompatible
set number
set relativenumber

" Filetype detection 
filetype on
filetype plugin on 
filetype indent on

syntax on


" Hide swap files. Using :e doesn't require to save previous file
" https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden

set showmode

" Enchanged command-line completition
set wildmenu

" Highlight all search results
" temporary disable search highlight :nohlsearch
set hlsearch
" disable highlight by pressing space. You can continue search by pressing n
" or shift+n 
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Leave last command on the bottom of the screen
set showcmd

" Show statusbar
set laststatus=2

" Use case insensitive search
set ignorecase 
set smartcase
" Backspace sets cursor to start of the line
set backspace=indent,eol,start
" Indent based on filetype
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display cursor position on statusbar 
set ruler

" Prompt save/discard dialog if unsaved data
set confirm

" Disable annoying terminal beebs and flashes
set t_vb=

" Enable mouse for all modes
set mouse=a

" Cmd line height to 2 rows
set cmdheight=2

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Tabs to four spaces and 
set shiftwidth=4
set softtabstop=4
set expandtab

" Map Y to copy row content from cursor to EOL
map Y y$

" Open and swithc between tabs
nnoremap <C -S-tab> :tabprevious<CR>
nnoremap <C -tab> :tabnext<CR>
nnoremap <C -t> :tabnew<CR>
nnoremap <C -S-tab> <ESC>:tabprevious<CR>i
nnoremap <C -tab> <ESC>:tabnext<CR>i
nnoremap <C -t> <ESC>:tabnew<CR>

" Map \s to replace each word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
