execute pathogen#infect()

syn on
set bg=dark
set ruler
set digraph
set list
set lcs=tab:»·,trail:·,eol:¶
set modeline
set modelines=5
set viminfo='100,<500,s100,h
set number
set colorcolumn=80
set noshowmode

colorscheme solarized

filetype plugin indent on

autocmd BufRead,BufNewFile *.pp set nodigraph
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

let g:go_fmt_command = "goimports"
