" File:    commit.vim
" Author:  kmnk <kmnknmk+vim@gmail.com>
" Version: 0.1.0
" License: MIT Licence

let s:save_cpo = &cpo
set cpo&vim

" variables {{{
" }}}

function! giti#commit#run(files) "{{{
  return s:run('commit', a:files)
endfunction "}}}

function! giti#commit#dry_run(files) "{{{
  return s:run('commit --dry-run', a:files)
endfunction "}}}

function! giti#commit#amend(files) "{{{
  return s:run('commit --amend', a:files)
endfunction "}}}

" local functions {{{
function! s:run(command, files) "{{{
  return giti#execute('! git ' . a:command . ' ' . join(a:files))
endfunction "}}}

" }}}

let &cpo = s:save_cpo
unlet s:save_cpo
" __END__
