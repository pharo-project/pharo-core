selecting
selection
	selectionIndex = 0 ifTrue: [^ ''].
	selectionIndex = 1 ifTrue: [^ object].
	selectionIndex = 2 ifTrue: [^ object longPrintString].
	(selectionIndex - 2) <= object class instSize
		ifTrue: [^ object instVarAt: selectionIndex - 2].

	^ object array at: self arrayIndexForSelection