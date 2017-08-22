let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file']
let g:deoplete#sources.go = ['go']
let g:deoplete#keyword_patterns = {}
let g:deoplete#auto_complete_delay = 40

call deoplete#enable()

function g:Multiple_cursors_before()
    let g:deoplete#disable_auto_complete = 1
endfunction
function g:Multiple_cursors_after()
    let g:deoplete#disable_auto_complete = 0
endfunction
