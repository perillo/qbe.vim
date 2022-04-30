" Vim filetype plugin file
" Language: QBE
" Maintainer: Manlio Perillo
" Latest Revision: 2022-04-30

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

" Recomended code style, no tabs and 4-space indentation
setlocal expandtab
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4

setlocal comments=:#
setlocal commentstring=#\ %s

let b:undo_ftplugin = 'setl et< ts< sts< sw< com< cms<'

let &cpo = s:cpo_save
unlet! s:cpo_save
