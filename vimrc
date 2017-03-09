"---------- General  ----------"
set nocompatible				"Turn off compatibility with Vi. This prevents Vi from interfering with certain settings and plugins.
let mapleader = '\'				"Set a leader character for commands.
set backspace=indent,eol,start			"Make backspace behave like every other editor.


"---------- Visuals  ----------"

syntax on
colorscheme jellybeans				"Set a colorscheme.	
set t_CO=256					"Force the terminal to use 256 colors.
set number					"Set line numbers in the columns.

set guioptions-=l				"The following four lines remove scroll bars.
set guioptions-=L
set guioptions-=r
set guioptions-=R


"---------- Search  ----------"

set hlsearch					"Highlight search terms.
set incsearch					"Highlight search terms as your typing them.


"---------- Mappings ----------"

"Open the .vimrc file in a new tab.
nmap <leader>ev 	:tabedit $MYVIMRC<cr>
"Close vim buffer.
nmap <leader>q		:q<cr>
"Save buffer.
nmap <leader>s		:w<cr>
"Turn of search highlighting.
nmap <leader><space> 	:nohlsearch<cr>
"Switch to normal mode.
imap jk <esc>


"---------- Split Management  ----------"

set splitbelow
set splitright

nmap <c-j> <c-w><c-j>
nmap <c-k> <c-w><c-k>
nmap <c-h> <c-w><c-h>
nmap <c-l> <c-w><c-l>


"---------- Auto-Commands ----------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %		"Automatically source .vimrc file on save.
augroup END
