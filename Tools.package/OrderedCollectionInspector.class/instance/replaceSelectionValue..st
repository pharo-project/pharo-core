as yet unclassified
replaceSelectionValue: anObject 
	"The receiver has a list of variables of its inspected object. One of these 
	is selected. The value of the selected variable is set to the value, anObject."

	(selectionIndex - 2) <= object class instSize
		ifTrue: [^ super replaceSelectionValue: anObject].
	object at: self selectedObjectIndex put: anObject