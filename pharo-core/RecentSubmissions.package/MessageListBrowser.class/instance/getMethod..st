tree
getMethod: aMessageListInspectableNode

	| methodReference |
	methodReference := (self getMethodReference: aMessageListInspectableNode) .
	^ methodReference compiledMethod.
	