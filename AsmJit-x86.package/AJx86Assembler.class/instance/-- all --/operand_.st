operand: anObject

	anObject isInteger ifTrue: [
		^ anObject asImm
		].
	
	anObject isString ifTrue: [
		^ anObject
		].
	
	^ anObject