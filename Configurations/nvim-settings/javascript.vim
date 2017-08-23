let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:flow#enable = 1
let g:flow#omnifunc = 1

autocmd BufNewFile,BufRead,BufWritePost *.js call DetectFlow()

function! DetectFlow()
  if getline(1) =~# '^\s*\/[/*]\s*@flow\>'
    set ft=javascript.jsx.flow
  end
endfunction

let g:deoplete#auto_complete_delay = 50
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file']
let g:deoplete#sources['javascript.jsx'] = ['ternjs', 'file']
let g:deoplete#sources['javascript.jsx.flow'] = ['ternjs', 'flow', 'file']

call deoplete#custom#set('async_clj', 'rank', 70)
call deoplete#custom#set('ternjs', 'rank', 60)
call deoplete#custom#set('buffer', 'rank', 50)

call deoplete#enable()
