getMethod: aMessageListInspectableNode ifAbsent: aBlock

	| methodReference |
	methodReference := (self getMethodReference: aMessageListInspectableNode) .
	^ methodReference realClass 
		compiledMethodAt: methodReference name
		ifAbsent: aBlock.
	