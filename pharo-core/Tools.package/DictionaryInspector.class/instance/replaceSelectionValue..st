selecting
replaceSelectionValue: anObject 
	selectionIndex <= self numberOfFixedFields
		ifTrue: [^ super replaceSelectionValue: anObject].
	^ object
		at: (keyArray at: selectionIndex - self numberOfFixedFields)
		put: anObject