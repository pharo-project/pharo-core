undo
	undoBuffer isEmpty ifTrue: [ ^ self ].
	undoBuffer removeLast undo.