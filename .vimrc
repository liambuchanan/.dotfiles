call pathogen#infect() 

" filetype plugins
filetype plugin on
filetype indent on

" syntax highlighting
syntax on

" Set to auto read when a file is changed from the outside
set autoread

" Ignore stuff
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" Show position in file
set ruler

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" search on every char
set incsearch

" show matching brackets
set showmatch
set mat=2

set background=light

" .swp files are annoying
set nobackup
set nowb
set noswapfile

setlocal tabstop=4 shiftwidth=4 expandtab

set autoindent
set smartindent
set wrap
