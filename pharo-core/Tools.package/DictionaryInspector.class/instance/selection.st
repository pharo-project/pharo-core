selecting
selection

	selectionIndex <= (self numberOfFixedFields) ifTrue: [^ super selection].
	^ object at: (keyArray at: selectionIndex - self numberOfFixedFields) ifAbsent:[nil]