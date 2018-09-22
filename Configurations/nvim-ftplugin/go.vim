nnoremap <leader>I :GoImplements<CR>
nnoremap <leader>i :GoInfo<CR>
nnoremap <leader>g :GoCoverageToggle<CR>

"call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
    "\ 'name': 'gocode',
    "\ 'whitelist': ['go'],
    "\ 'completor': function('asyncomplete#sources#gocode#completor'),
    "\ 'config': {
    "\    'gocode_path': expand('~/Development/Go/bin/gocode')
    "\  },
    "\ }))

