autocmd BufNewFile,BufRead,BufWritePost *.js call DetectFlow()

let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#parser = 'flow'
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

function! DetectFlow()
  if getline(1) =~# '^\s*\/[/*]\s*@flow\>'
    " if flow is detected use flow jump to def instead
    set ft=javascript.jsx.flow
  end
endfunction
