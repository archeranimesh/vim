"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""                                                                                                                                                                                   
" => General Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Better safe then sorry, so enable nocompatible
set nocompatible

" added the pathogen plugin
"execute pathogen#infect()

" Syntax highlight will be enabled
syntax on

" added the colorscheme for VIM
" colorscheme gruvbox
" set background=dark

" Enable the filetype plugin loading
filetype indent on
" http://vim.wikia.com/wiki/Omni_completion
" required for omni complete
filetype plugin on
" set the ruler for line no
set ruler

" Omni completion is not usually enabled by default. 
set omnifunc=syntaxcomplete#Complete


" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=4           " show existing tab with 4 spaces width
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set expandtab           " On pressing tab, insert 4 spaces
set softtabstop=4       " Sets the number of columns for a TAB."

" http://vim.wikia.com/wiki/Example_vimrc
" Better command-line completion
" https://dougblack.io/words/a-good-vimrc.html
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case when searching
set number              " show line numbers
set showcmd             " show command in bottom bar"
set lazyredraw          " redraw only when we need to."
set cursorline          " Show visual line under the curson.
set wildmenu            " show the command in a seperate menu

" Show invisible chars
" http://vimcasts.org/episodes/show-invisibles/
" set list
set listchars=tab:▸\ ,eol:¬,space:.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => key mapping and remapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"http://stackoverflow.com/questions/5367760/vim-disabling-the-cursor-arrow-keys-but-only-for-navigation
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>    

" https://stackoverflow.com/questions/630884/opening-vim-help-in-a-vertical-split-window
" Opening the help in vertical split right window by default.
"cabbrev h vert bo h

" https://vim.fandom.com/wiki/Single_tags_file_for_a_source_tree
set tags=./tags;
" present a list of tags to jump
nnoremap <C-]> g<C-]>
