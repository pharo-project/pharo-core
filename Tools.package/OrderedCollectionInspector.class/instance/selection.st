as yet unclassified
selection
	"The receiver has a list of variables of its inspected object.
	One of these is selected. Answer the value of the selected variable."

	(selectionIndex - 2) <= object class instSize
		ifTrue: [^ super selection].
	^ object at: self selectedObjectIndex