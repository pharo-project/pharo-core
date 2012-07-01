selecting
replaceSelectionValue: anObject 
	"Refer to the comment in Inspector|replaceSelectionValue:."

	^selectionIndex = 1
		ifTrue: [object]
		ifFalse: [object namedTempAt: selectionIndex - 3 put: anObject]