if exists("b:current_syntax")
	finish
endif

" for Hy colors
" Authir Jeefy <jeefy163@163.com>
"
" Note: use for Hylang Lisp for python

let g:colors_name="hycolors"
set ai!
set ruler
set autoindent
set nu!
set number

"Blue Boolean
hi Boolean	ctermfg=14 term=bold
"Pink String
hi String 	ctermfg=13 term=bold
"Green paramthese
hi Param	guifg=#00FF50 guibg=#55FF90 term=bold ctermfg=0 ctermbg=121
"Blue Integer or float
hi Int		guifg=#6090FF term=bold ctermfg=14
"LightGreen Args
hi Arg		guifg=#00FACF gui=italic term=italic ctermfg=121
"Yellow Deftext Conditions
hi DefText	guifg=#FFFF00 gui=italic term=none ctermfg=11
hi Conditions	guifg=#FFFF00 gui=bold term=none ctermfg=11
"GreenYellow Builtins
hi Builtins 	guifg=#ADFF2F term=bold ctermfg=120 gui=bold
"BlueGray Maths
hi Maths	guifg=#E6E6FA gui=italic term=none ctermfg=122
"PaleGreen Underline(for what?)
hi UnderLine	guifg=#98FB98 gui=underline term=underline ctermfg=14
"Red Error (Exception)
hi Error	guifg=#FF4500 guibg=#FF7F50 gui=bold term=reverse ctermfg=15 ctermbg=9
"White Explain
hi Explain	guifg=#FFFFFF gui=italic term=italic ctermfg=15 ctermbg=233
"Gray Special
hi Special	guifg=#A9A9A9 term=bold,italic ctermfg=255 ctermbg=244
"DarkBlue Def
hi Def term=bold ctermfg=12


syn keyword Conditions if if* if-not del when return while with with\/a and or xor await break pass continue cond cmo
syn keyword Conditions unless nonlacol comment for yield yield-from global not raise
syn keyword Boolean True False
syn keyword Param \( \)
syn region String start="\"" end="\""
syn match Int "\d\+"
syn keyword Builtins assert assoc do doto doc #doc dfor lfor sfor setv setx eval\-and\-complie eval\-when\-conpile
syn keyword Builtins get first last cut gensym of py pys import require quote quasiquoto rest unquote with with\/a 
syn keyword Builtins unquote\-splice with\-decorator with\-gensyms print input lif lif\-not getattr setattr hasattr
syn match Builtins "\-\-.*?\-\-" ""
syn match Special "#\.\*\?"
syn keyword Special \` \~ \~\@ \' \^ \. -> --> as--> 
syn keyword Maths \+ \= \- \* \/ \/\/ \% \< \> \<\= \>\= \!\= \=
syn match Explain ";\.\*\?"
syn keyword Def defn defclass defn\/a defmacro defmacro\/g! defmacro! deftag fn fn/a

let b:current_syntax = "Hycl"
