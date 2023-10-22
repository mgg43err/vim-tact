" tact.vim syntax file

if exists("b:current_syntax")
  finish
endif

" Define TACT syntax
syntax keyword tactKeyword var contract message fun receive init
syntax keyword tactBuiltinAddress Address Int uint64 uint32 int32
syntax keyword tactComment TODO FIXME XXX

" Define TACT constants
syntax keyword tactConstant true false

" Define TACT functions
syntax keyword tactFunction @import

" Define TACT types
syntax keyword tactType Deployable

" Define TACT operators
syntax keyword tactOperator as

" Define TACT labels
syntax keyword tactLabel TODO FIXME XXX contained

" Define TACT strings and numbers
syntax match tactString '".*"'hs=s contained
syntax match tactNumber '\<\d\+\>' contained

" Define TACT line comment
syntax match tactCommentLine "//.*$" contains=tactComment

" Define TACT block comment
syntax region tactCommentBlock start="/\*" end="\*/" contains=tactComment

" Define TACT variables
syntax match tactVariable "\<\w\+\>"hs=s

" Define TACT section headings
syntax match tactSectionHeading /^\s*\*.*$/ contains=tactLabel

" Define TACT functions
syntax region tactFunction start="fun" end="$" contains=tactFunction,tactVariable,tactString,tactNumber,tactOperator,tactKeyword

" Define TACT contracts
syntax region tactContract start="contract" end="\n\n" contains=tactVariable,tactString,tactNumber,tactOperator,tactKeyword

" Define TACT messages
syntax region tactMessage start="message" end="\n\n" contains=tactVariable,tactString,tactNumber,tactOperator,tactKeyword

" Define TACT commands and options
syntax match tactCommand /^\s*:.*/ contained

" Set the default TACT filetype
setlocal filetype=tact

" Enable TACT syntax highlighting
hi def link tactKeyword Keyword
hi def link tactBuiltinAddress Type
hi def link tactComment Comment
hi def link tactConstant Constant
hi def link tactFunction Function
hi def link tactType Type
hi def link tactOperator Operator
hi def link tactLabel Label
hi def link tactString String
hi def link tactNumber Number
hi def link tactVariable Identifier
hi def link tactSectionHeading Statement
hi def link tactContract Statement
hi def link tactMessage Statement
hi def tactCommand term=bold cterm=bold gui=bold
