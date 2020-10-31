"If you want to disable the user validation at the getter/setter creation
let g:vim_php_refactoring_auto_validate_sg = 1

"If you want to disable the user validation at getter only creation,
let g:vim_php_refactoring_auto_validate_g = 1

"If you want to disable the user validation for all rename features
"let g:vim_php_refactoring_auto_validate_rename = 1

"If you want to disable the user validation for the visibility (private/public) 
"let g:vim_php_refactoring_auto_validate_visibility = 1


"To change the default visibility add one/both of those lines in your ~/.vimrc file
"let g:vim_php_refactoring_default_property_visibility = 'private'
"let g:vim_php_refactoring_default_method_visibility = 'private'


"To enable fluent setters add either of these lines to your ~/.vimrc file
" default is 0 -- disabled
" to enable for all setters
"let g:vim_php_refactoring_make_setter_fluent = 1
" to enable but be prompted when creating the setter
"let g:vim_php_refactoring_make_setter_fluent = 2
