let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:flow#enable = 0
let g:flow#omnifunc = 1
let g:flow#autoclose = 1

autocmd BufNewFile,BufRead,BufWritePost *.js call DetectFlow()

function! DetectFlow()
  if getline(1) =~# '^\s*\/[/*]\s*@flow\>'
    set ft=javascript.jsx.flow
  end
endfunction
