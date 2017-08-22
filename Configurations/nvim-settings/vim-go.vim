let g:ale_go_gometalinter_options = '
  \ --aggregate
  \ --fast
  \ --sort=line
  \ --vendor
  \ --vendored-linters
  \ --disable=gas
  \ --disable=goconst
  \ --disable=gocyclo
  \ '

let g:ale_linters = {'javascript': ['eslint'], 'go': ['gometalinter']}
let g:ale_set_highlights = 0
let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_warn_about_trailing_whitespace = 0

let g:go_list_type = "quickfix"
let g:go_statusline_duration = 10000
let g:go_metalinter_enabled = [
      \ 'deadcode', 'errcheck', 'gas', 'goconst', 'golint', 'gosimple',
      \ 'gotype', 'ineffassign', 'interfacer', 'staticcheck', 'structcheck',
      \ 'unconvert', 'varcheck', 'vet', 'vetshadow',
      \ ]

let g:go_auto_type_info = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1


