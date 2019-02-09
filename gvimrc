execute pathogen#infect()

if has("gui_running")
    " Maximize gvim window
    set lines=999 columns=999
endif

colorscheme gruvbox
set background=dark

" https://superuser.com/questions/322947/gvim-shift-insert-dump-s-insert-instead-of-the-clipboard-text
map  <silent>  <S-Insert>  "+p
imap <silent>  <S-Insert>  <Esc>"+pa

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll 
