lookupVariableForWrite: aVariableNode

	| var |
	
	var := scope lookupVar: aVariableNode name.

	var ifNil: [^var].
	(self checkVariableIsWritable: var) ifFalse: [ self storeIntoSpecialVariable: aVariableNode ].
	
	var isTemp ifTrue: [
		(var scope outerNotOptimizedScope ~= scope outerNotOptimizedScope) "only escaping when they will end up in different closures"
			ifTrue: [ var markEscapingWrite]].
	^var