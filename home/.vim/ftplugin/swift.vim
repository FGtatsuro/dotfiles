if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin=1

setlocal tabstop=4
setlocal shiftwidth=4

if exists('b:current_syntax') && b:current_syntax == 'swift'
  finish
endif

syntax region swiftComment start=/\/\*/ end=/\*\//
syntax match swiftComment /\/\/.*/
highlight default link swiftComment Comment

syntax region swiftStringLiteral start=/"/ skip=/\\"/ end=/"/
highlight default link swiftStringLiteral String

syntax keyword swiftDeclarationKeywords class deinit enum extension func import init let protocol static struct subscript typealias var
highlight default link swiftDeclarationKeywords Keyword
syntax keyword swiftStatementKeywords break case continue default do else fallthrough if in for return switch where while
highlight default link swiftStatementKeywords Keyword
syntax keyword swiftExpressionTypeKeywords as dynamicType is new super self Self Type __COLUMN__ __FILE__ __FUNCTION__ __LINE__
highlight default link swiftExpressionTypeKeywords Keyword
syntax keyword swiftReserveKeywords associativity didSet get infix inout left mutating none nonmutating operator override postfix precedence prefix right set unowned unowned(safe) unowned(unsafe) weak willSet
highlight default link swiftReserveKeywords Keyword

" TODO: remove duplicate
syntax match swiftTypeIdentifier /\<[[:alpha:]_][[:alnum:]_.]*/ contained
syntax match swiftType /: [[:alpha:]_][[:alnum:]_.]*[:blank:]*/ contains=swiftTypeIdentifier
highlight default link swiftType Operator
highlight default link swiftTypeIdentifier Type

if !exists('b:current_syntax')
  let b:current_syntax = 'swift'
endif
