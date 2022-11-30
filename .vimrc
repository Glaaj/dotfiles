                       " Glaaj's .vimrc file
call plug#begin('~/.vim/plugged')

"Non-theme related plugins
"GIT related
Plug 'airblade/vim-gitgutter'

"Better line numbers
Plug 'myusuf3/numbers.vim'

"Fuzzy search
Plug 'junegunn/fzf'

"Theme related plugins
Plug 'dracula/vim',{'as':'dracula'}
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Related to themes and settings for plugins
colorscheme dracula
set termguicolors
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

""" Vanilla vim configuration """
syntax enable                         " enable syntax highlighting
set autoindent                        " enables indents to persist among lines
set showmatch                         " highlights pairs
set wildmenu                          " nice menu for filesearch etc
set noswapfile                        " disable creation of swapfile
set hlsearch                          " highlights what you search with '/'
set cc=80                             " line at 80 columns
set nowrap                            " disable word wrapping

" Clipboard from OSX integration
set clipboard=unnamed

" Working with tabs
set tabstop=2
set shiftwidth=2
set expandtab

" stopping myself from using the arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

autocmd BufWritePre * :%s/\s\+$//e
