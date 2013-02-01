selecting
replaceSelectionValue: anObject
	"The receiver has a list of variables of its inspected object. One of these 
	is selected. The value of the selected variable is set to the value, anObject."

	selectionIndex <= self numberOfFixedFields
		ifTrue: [ ^ super replaceSelectionValue: anObject ]	
	"My own fields are readonly"