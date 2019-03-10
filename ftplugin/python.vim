nnoremap <silent> <F5> :call myplugin#StripTrailingWhitespaces()<CR>
" https://superuser.com/questions/1268926/how-to-use-on-save-action-for-file-type-in-vim
" https://vi.stackexchange.com/questions/3732/vimscript-help-with-autoloading-scope-sid
" http://learnvimscriptthehardway.stevelosh.com/chapters/53.html
" https://superuser.com/questions/1154659/where-should-users-put-custom-vim-functions
" Trim trailing spaces.
autocmd BufWritePre <buffer> call myplugin#StripTrailingWhitespaces()

" https://vim.fandom.com/wiki/Omnicomplete_-_Remove_Python_Pydoc_Preview_Window
autocmd FileType python set omnifunc=pythoncomplete#Complete
" Prevent Pydoc preview window
" set completeopt-=preview

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
