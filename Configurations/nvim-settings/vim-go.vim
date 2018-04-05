let g:ale_go_gometalinter_options = '
  \ --aggregate
  \ --fast
  \ --sort=line
  \ --vendor
  \ --vendored-linters
  \ --disable=gas
  \ --disable=goconst
  \ '

let g:ale_linters = {'javascript': ['eslint', 'flow'], 'go': ['go build', 'gometalinter']}
let g:ale_set_highlights = 1
let g:ale_set_signs = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_warn_about_trailing_whitespace = 1

let g:go_list_type = "locationlist"
let g:go_statusline_duration = 3000
let g:go_metalinter_enabled = [
      \ 'deadcode', 'errcheck', 'gas', 'goconst', 'golint', 'gosimple',
      \ 'gotype', 'ineffassign', 'interfacer', 'staticcheck', 'structcheck',
      \ 'unconvert', 'varcheck', 'vet', 'vetshadow',
      \ ]

let g:ale_open_list = 0
let g:go_auto_type_info = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
