; SYNTAX TEST "Packages/Fennel/Fennel.sublime-syntax"

; Fennel 1.3.0 on Lua 5.4.4

; Deprecated:

; New forms

(fcollect [i 0 10 2]
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^ entity.name.tag.fennel_support.fennel
;         ^ punctuation.section.brackets.begin.fennel
;          ^ source.fennel
;            ^ constant.numeric.integer.decimal.fennel
;              ^^ constant.numeric.integer.decimal.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^ punctuation.section.brackets.end.fennel
  (if (> i 2) (* i i)))
; ^ punctuation.section.parens.begin.fennel
;  ^^ entity.name.tag.lua_support.fennel
;     ^ punctuation.section.parens.begin.fennel
;      ^ entity.name.tag.lua_support.fennel
;        ^ source.fennel
;          ^ constant.numeric.integer.decimal.fennel
;           ^ punctuation.section.parens.end.fennel
;             ^ punctuation.section.parens.begin.fennel
;              ^ entity.name.tag.lua_support.fennel
;                ^^^ source.fennel
;                   ^^^ punctuation.section.parens.end.fennel

(case-try a
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^ entity.name.tag.fennel_support.fennel
;         ^ source.fennel
  a {:a a}
; ^ source.fennel
;   ^ punctuation.section.braces.begin.fennel
;    ^ punctuation.definition.keyword.fennel
;     ^ constant.other.keyword.fennel
;       ^ source.fennel
;        ^ punctuation.section.braces.end.fennel
  (catch
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.fennel_support.fennel
    (_ :timeout) nil))
;   ^ punctuation.section.parens.begin.fennel
;    ^ variable.function.fennel
;      ^ punctuation.definition.keyword.fennel
;       ^^^^^^^ constant.other.keyword.fennel
;                ^^^ constant.language.fennel
;                   ^^ punctuation.section.parens.end.fennel

(faccumulate [n 0 i 1 5] (+ n i))
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ punctuation.section.brackets.begin.fennel
;             ^ source.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                 ^ source.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^ punctuation.section.brackets.end.fennel
;                        ^ punctuation.section.parens.begin.fennel
;                         ^ entity.name.tag.lua_support.fennel
;                           ^^^ source.fennel
;                              ^^ punctuation.section.parens.end.fennel

(case [1 2 3]
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^ punctuation.section.brackets.begin.fennel
;      ^ constant.numeric.integer.decimal.fennel
;        ^ constant.numeric.integer.decimal.fennel
;          ^ constant.numeric.integer.decimal.fennel
;           ^ punctuation.section.brackets.end.fennel
  [a a]   (* a 2)
; ^ punctuation.section.brackets.begin.fennel
;  ^^^ source.fennel
;     ^ punctuation.section.brackets.end.fennel
;         ^ punctuation.section.parens.begin.fennel
;          ^ entity.name.tag.lua_support.fennel
;            ^ source.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^ punctuation.section.parens.end.fennel
  [1 b c] (+ b c))
; ^ punctuation.section.brackets.begin.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^^^ source.fennel
;       ^ punctuation.section.brackets.end.fennel
;         ^ punctuation.section.parens.begin.fennel
;          ^ entity.name.tag.lua_support.fennel
;            ^^^ source.fennel
;               ^^ punctuation.section.parens.end.fennel
