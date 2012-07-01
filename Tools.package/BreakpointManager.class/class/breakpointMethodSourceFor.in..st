private
breakpointMethodSourceFor: aSymbol in: aClass 
	"Compose new source containing a break statement (currently it will be the first,
	later we want to insert it in any place)"

	| oldSource methodNode breakOnlyMethodNode sendBreakMessageNode |
	oldSource := aClass sourceCodeAt: aSymbol.
	methodNode := aClass compilerClass new
		compile: oldSource
		in: aClass 
		notifying: nil 
		ifFail: [self error: '[breakpoint] unable to install breakpoint'].
	breakOnlyMethodNode := aClass compilerClass new
		compile: 'temporaryMethodSelectorForBreakpoint
self break.
^self'
		in: aClass 
		notifying: nil 
		ifFail: [self error: '[breakpoint] unable to install breakpoint'].
	sendBreakMessageNode := breakOnlyMethodNode block statements first.
	methodNode block statements addFirst: sendBreakMessageNode.
	^methodNode printString
	