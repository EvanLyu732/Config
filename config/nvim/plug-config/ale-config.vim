"ale

"symbol setttings 
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

"ale settings for java
let g:ale_java_javalsp_executable = "/Users/evanlyu732/java-language-server/java-language-server/dist/mac/bin/launcher"

"warning message for chinese
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'

"linter setting
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

"fixer setting
let g:ale_fixers = {
\   'python': ['black'],
\}

"auto fixer for save
let g:ale_fix_on_save = 1

"navigate error
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
