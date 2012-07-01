selecting
selection

	| bytecodeIndex |
	selectionIndex = 0 ifTrue: [^ ''].
	selectionIndex = 1 ifTrue: [^ object ].
	selectionIndex = 2 ifTrue: [^ object symbolic].
	selectionIndex = 3 ifTrue: [^ object headerDescription].
	selectionIndex <= (object numLiterals + 3) 
		ifTrue: [ ^ object objectAt: selectionIndex - 2 ].
	bytecodeIndex := selectionIndex - object numLiterals - 3.
	^ object at: object initialPC + bytecodeIndex - 1