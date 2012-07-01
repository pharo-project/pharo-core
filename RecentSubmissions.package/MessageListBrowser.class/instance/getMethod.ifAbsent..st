tree
getMethod: aMessageListInspectableNode ifAbsent: aBlock

	| methodReference |
	methodReference := (self getMethodReference: aMessageListInspectableNode) .
	^ methodReference realClass methodDict
			at: methodReference name
			ifAbsent: aBlock.
	