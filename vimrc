

" detect Markdown syntax for *.md files
if has("autocmd")
	autocmd BufNewFile,BufRead *.md set filetype=markdown	
endif

"always wrap long lines
set wrap

" display line number
set number

" enable search pattern highlighting
set hlsearch

set guifont=Monaco:h20
