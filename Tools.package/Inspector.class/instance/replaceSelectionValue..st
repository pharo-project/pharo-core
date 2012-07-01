selecting
replaceSelectionValue: anObject 
	"The receiver has a list of variables of its inspected object. One of these 
	is selected. The value of the selected variable is set to the value, 
	anObject."
	| basicIndex si instVarIndex |
	selectionIndex <= 2 ifTrue: [
		self toggleIndex: (si := selectionIndex).  
		self toggleIndex: si.
		^ object].
	instVarIndex := selectionIndex - 2.
	instVarIndex > object class instSize
		ifFalse: [^ object instVarAt: instVarIndex put: anObject].
	object class isVariable or: [self error: 'Cannot replace selection'].
	basicIndex := selectionIndex - 2 - object class instSize.
	(object basicSize <= (self i1 + self i2)  or: [basicIndex <= self i1])
		ifTrue: [^object basicAt: basicIndex put: anObject]
		ifFalse: [^object basicAt: object basicSize - (self i1 + self i2) + basicIndex
					put: anObject]