" Vim syntax file
" Language: QBE
" Maintainer: Manlio Perillo
" Latest Revision: 2022-04-30

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case match

" Types.
syn keyword qbeType w l s d b h

" Instructions.
" Arithmetic and Bits.
syn keyword qbeInstruction add
            \ and
            \ div
            \ mul
            \ neg
            \ or
            \ rem
            \ sar
            \ shl
            \ shr
            \ sub
            \ udiv
            \ urem
            \ xor

" Memory.
syn keyword qbeInstruction alloc16
            \ alloc4
            \ alloc8
            \ loadd
            \ loadl
            \ loads
            \ loadsb
            \ loadsh
            \ loadsw
            \ loadub
            \ loaduh
            \ loaduw
            \ loadw
            \ storeb
            \ stored
            \ storeh
            \ storel
            \ stores
            \ storew

" Comparison.
syn keyword qbeInstruction ceqd
            \ ceql
            \ ceqs
            \ ceqw
            \ cged
            \ cges
            \ cgtd
            \ cgts
            \ cled
            \ cles
            \ cltd
            \ clts
            \ cned
            \ cnel
            \ cnes
            \ cnew
            \ cod
            \ cos
            \ csgel
            \ csgew
            \ csgtl
            \ csgtw
            \ cslel
            \ cslew
            \ csltl
            \ csltw
            \ cugel
            \ cugew
            \ cugtl
            \ cugtw
            \ culel
            \ culew
            \ cultl
            \ cultw
            \ cuod
            \ cuos

" Conversions.
syn keyword qbeInstruction dtosi
            \ dtoui
            \ exts
            \ extsb
            \ extsh
            \ extsw
            \ extub
            \ extuh
            \ extuw
            \ sltof
            \ ultof
            \ stosi
            \ stoui
            \ swtof
            \ uwtof
            \ truncd

" Cast and Copy, Call, Variadic, Phi and Jumps.
syn keyword qbeInstruction cast
            \ copy
            \ call
            \ vastart
            \ vaarg
            \ phi
            \ jmp
            \ jnz
            \ ret

" Keywords.
syn keyword qbeKeyword align data env export function section type

" Misc syntax.
syn region qbeComment start="#" end="$"

syn region qbeString start=/"/ skip=/\\"/ end=/"/ contains=qbeEscape
syn match qbeEscape display contained /\v\\[bfnrtv'"]|\\x\x{2}|\\\o{1,3}/

syn match qbeFloat  "\v<[ds]_-?\d+.\d*([eE][+-]?\d*)?"
syn match qbeNumber "\v<\d+"

hi def link qbeComment Comment
hi def link qbeEscape Special
hi def link qbeFloat Number
hi def link qbeInstruction Function
hi def link qbeKeyword Keyword
hi def link qbeNumber Number
hi def link qbeString String
hi def link qbeType Type

let b:current_syntax = "qbe"

let &cpo = s:cpo_save
unlet! s:cpo_save
