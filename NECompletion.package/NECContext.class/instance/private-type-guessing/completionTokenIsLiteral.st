completionTokenIsLiteral
	| currentRange |
	currentRange := (ranges at: completionIndex).
	^  currentRange isConstant or:[ currentRange isUnfinished ]