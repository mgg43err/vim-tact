" TACT syntax highlighting
au BufRead,BufNewFile *.tact set filetype=tact

" TACT filetypes
augroup tactFileType
  autocmd!
  autocmd FileType tact setlocal syntax=tact
augroup END
