" Vim syntax file
" Language:     GNU SL, GNU Seudo Lenguaje
" Maintainer:   Eliseo Ocampos <roskoff@gmail.com>
" Last Change:  2013 Dic 07

" Finalizar si otro archivo de sintaxis ya fue cargado
if exists("b:current_syntax")
  finish
endif
 
" Comentarios
syn keyword gslTodo                 contained TODO FIXME XXX
syn match   gslComentarioLinea      "//.*$" contains=gslTodo
syn region  gslComentarioMultiLinea start="/\*" end="\*/" contains=gslTodo

" Palabras reservadas
syn keyword gslPalabrasReservadas and archivo const constantes matriz registro vector archivo inicio subrutina tipos lib not programa retorna var const fin libext or ref variables 

" Estructuras de control iterativas
syn keyword gslIteracion mientras repetir desde hasta paso

" Estructuras de control condicional
syn keyword gslCondicion eval caso si sino

" Operadores logicos
syn keyword gslOperador and or not

" Tipos de datos
syn keyword gslTipos cadena logico numerico

" Valores literales
syn region  gslCadena start="\"" end="\""
syn match   gslNumero "[-+]\=\d\+\([eE][-+]\=\d\+\)\="
syn match   gslNumero "[-+]\=\d\+\.\d\+\([eE][-+]\=\d\+\)\="
"(\.\d+)?)([eE][+-]?\d\+
syn keyword gslLogico TRUE FALSE SI NO

" Resalte de sintaxis por defecto
hi def link gslTodo                 Todo
hi def link gslComentarioLinea      Comment
hi def link gslComentarioMultiLinea Comment
hi def link gslPalabrasReservadas   Statement
hi def link gslIteracion            Repeat
hi def link gslCondicion            Conditional
hi def link gslOperador             Operator
hi def link gslTipos                Type
hi def link gslCadena               Constant
hi def link gslNumero               Constant
hi def link gslLogico               Constant
let b:current_syntax = "gsl"
