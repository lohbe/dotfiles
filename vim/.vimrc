filetype plugin on

" ALE
let g:ale_echo_msg_format = '%linter% says %code%: %s'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\  'markdown': ['pandoc'],
\  'yaml': ['yamlfix']
\}
