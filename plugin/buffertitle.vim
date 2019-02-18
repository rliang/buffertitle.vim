if exists('g:loaded_buffertitle') | fini | en
let g:loaded_buffertitle=1

fu! buffertitle#string()
  let lbl=get(g:, 'buffertitle#label', 'bufname(v:key + 1)')
  let mod=get(g:, 'buffertitle#modified', 'v:val."+"')
  let cur=get(g:, 'buffertitle#current', '"[ ".v:val." ]"')
  let sep=get(g:, 'buffertitle#separator', '  ')
  let fil=get(g:, 'buffertitle#filter', 'bufexists(v:key + 1) && buflisted(v:key + 1)')
  let labels=map(range(bufnr('$')), lbl)
  let labels=map(labels, 'getbufvar(v:key + 1, "&mod") ? '.mod.' : v:val')
  let labels=map(labels, 'v:key + 1 == bufnr("%") ? '.cur.' : v:val')
  return join(filter(labels, fil), sep)
endf

set title titlelen=30000 titlestring=%{buffertitle#string()}
