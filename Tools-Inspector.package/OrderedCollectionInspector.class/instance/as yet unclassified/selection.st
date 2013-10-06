selection
	"The receiver has a list of variables of its inspected object.
	One of these is selected. Answer the value of the selected variable."

	selectionIndex <= self numberOfFixedFields
		ifTrue: [^ super selection].
	^ object at: self selectedObjectIndex