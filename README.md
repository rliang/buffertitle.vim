# buffertitle.vim
Shows a buffer list in the title.

## Options
* `let g:buffertitle#label='bufname(v:key + 1)'` callback to get buffer names.
* `let g:buffertitle#modified='v:val."+"'` callback to apply to a modified buffer's name.
* `let g:buffertitle#current='"[ ".v:val." ]"'` callback to apply to the current buffer's name.
* `let g:buffertitle#separator='  '` string to separate buffer names.
* `let g:buffertitle#filter='bufexists(v:key + 1) && buflisted(v:key + 1)'` callback to filter buffers.

## Credits
Inspired by [vim-bufferline](https://github.com/bling/vim-bufferline).
