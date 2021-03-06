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

" https://vi.stackexchange.com/questions/12597/a-fixed-position-for-preview-windows
augroup previewWindowPosition
   au!
   autocmd BufWinEnter * call PreviewWindowPosition()
augroup END
function! PreviewWindowPosition()
   if &previewwindow
      wincmd L
   endif
endfunction   

" https://vim.fandom.com/wiki/Omnicomplete_-_Remove_Python_Pydoc_Preview_Window
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <C-E> :call myplugin#ToggleVExplorer()<CR>
let g:netrw_banner = 0          " remove the banner
let g:netrw_liststyle = 3       " tree style listing of directory
let g:netrw_browse_split = 4    " Open the file under cursor in same window
let g:netrw_altv = 1            " Open the file in the right of window, in place of current windo
let g:netrw_winsize = -28       " absolute width of netrw window

" https://shapeshed.com/vim-netrw/
augroup ProjectDrawer
  autocmd!
  " Open NetRW by default
  autocmd VimEnter * :call myplugin#ToggleVExplorer()
  " https://www.reddit.com/r/vim/comments/b00bcq/how_to_automatically_close_netrw_when_exiting_a/
  autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
  " https://stackoverflow.com/questions/4277808/nerdtree-auto-focus-to-file-when-opened-in-new-tab
  autocmd VimEnter * wincmd p
augroup END
