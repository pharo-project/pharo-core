hasBreakpoint
	| methodNode |
	methodNode := self ast.
	methodNode hasMetalinkBefore ifFalse: [ ^false ].
	^methodNode beforeLinks anySatisfy: [ :link | link metaObject = Break ]