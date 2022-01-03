filetype plugin indent on
autocmd FileType yaml,yml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme distinguished " set colorscheme
set number                " show line numbers
set backspace=indent,eol,start  " Allow backspacing over autoindent, line breaks and start of insert action
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set hlsearch              " highlight searches
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set smartcase             " except when using capital letters
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set wrap                  " wrap long lines of text
set wildmenu			  " better command-line completion
set showcmd               " Show partial commands in the last line of the screen
set visualbell            " use visual bell instead of beeping
set encoding=utf-8        " set file encoding
set ruler                 " show the cursor position all the time

" detect Markdown syntax for *.md files
if has("autocmd")
	autocmd BufNewFile,BufRead *.md set filetype=markdown
endif
