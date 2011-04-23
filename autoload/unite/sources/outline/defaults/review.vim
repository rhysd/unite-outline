"=============================================================================
" File    : autoload/unite/sources/outline/defaults/review.vim
" Author  : AKAMATSU Yuki <y.akamatsu@ukstudio.jp>
" Updated : 2011-04-23
"
" Licensed under the MIT license:
" http://www.opensource.org/licenses/mit-license.php
"
"=============================================================================

" Default outline info for ReVIEW
" Version: 0.0.1

function! unite#sources#outline#defaults#review#outline_info()
  return s:outline_info
endfunction

let s:outline_info = {
      \ 'heading': '^=\+',
      \ }

function! s:outline_info.create_heading(which, heading_line, matched_line, context)
  let level = strlen(matchstr(a:heading_line, '^=\+'))
  let heading = {
        \ 'word' : a:heading_line,
        \ 'level':  level,
        \ 'type' : 'generic',
        \ }
  return heading
endfunction

" vim: filetype=vim
