; SYNTAX TEST "Packages/Fennel/Fennel.sublime-syntax"

; Fennel 1.6.0 on Lua 5.5.0

; Deprecated:

; New forms

; tail!
; it asserts that the argument is called in tail position
; (since 1.4.0)

(fn process-stuff [raw i]
; <- punctuation.section.parens.begin.fennel
;^^  storage.modifier.fn.fennel
;   ^^^^^^^^^^^^^ entity.name.function.fn.fennel
;                 ^ punctuation.section.brackets.begin.fennel
;                  ^^^^^ source.fennel
;                       ^ punctuation.section.brackets.end.fennel
  (when (< i 10)
; ^ punctuation.section.parens.begin.fennel
;  ^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^ entity.name.tag.lua_support.fennel
;          ^^ source.fennel
;            ^^ constant.numeric.integer.decimal.fennel
;              ^ punctuation.section.parens.end.fennel
    (tail! (process-stuff raw (+ i 1)))))
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^ entity.name.tag.fennel_support.fennel
;          ^ punctuation.section.parens.begin.fennel
;           ^^^^^^^^^^^^^^^^^^ source.fennel
;                             ^ punctuation.section.parens.begin.fennel
;                              ^ entity.name.tag.lua_support.fennel
;                                ^^ source.fennel
;                                  ^ constant.numeric.integer.decimal.fennel
;                                   ^^^^^ punctuation.section.parens.end.fennel

; assert-repl
; make an assertation which opens a repl when it fails.
; (since 1.4.0)

(let [input (get-input)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^^^^^^ source.fennel
;           ^ punctuation.section.parens.begin.fennel
;            ^^^^^^^^^ source.fennel
;                     ^ punctuation.section.parens.end.fennel
      value []]
;     ^^^^^^ source.fennel
;           ^ punctuation.section.brackets.begin.fennel
;            ^^ punctuation.section.brackets.end.fennel
  (fn helper [x]
; ^ punctuation.section.parens.begin.fennel
;  ^^ storage.modifier.fn.fennel
;     ^^^^^^ entity.name.function.fn.fennel
;            ^ punctuation.section.brackets.begin.fennel
;             ^ source.fennel
;              ^ punctuation.section.brackets.end.fennel
    (table.insert value (calculate x)))
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^^^^^ source.fennel
;                       ^ punctuation.section.parens.begin.fennel
;                        ^^^^^^^^^^^ source.fennel
;                                   ^^^ punctuation.section.parens.end.fennel
  (assert-repl (transform helper value) "could not transform"))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^^^^
;              ^ punctuation.section.parens.begin.fennel
;               ^^^^^^^^^^^^^^^^^^^^^^ source.fennel
;                                     ^ punctuation.section.parens.end.fennel
;                                       ^ punctuation.definition.string.begin.fennel
;                                        ^^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                                                           ^ punctuation.definition.string.end.fennel
;                                                            ^^ punctuation.section.parens.end.fennel