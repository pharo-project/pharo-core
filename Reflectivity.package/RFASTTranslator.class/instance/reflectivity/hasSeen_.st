hasSeen: aNode
	seen ifNil: [ seen := Set new ].
	^seen includes: aNode