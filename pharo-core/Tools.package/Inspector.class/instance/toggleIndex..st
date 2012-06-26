selecting
toggleIndex: anInteger
	"The receiver has a list of variables of its inspected object. One of these 
	is selected. If anInteger is the index of this variable, then deselect it. 
	Otherwise, make the variable whose index is anInteger be the selected 
	item."

	selectionUpdateTime := 0.
	selectionIndex = anInteger
		ifTrue: 
			["same index, turn off selection"
			selectionIndex := 0.
			contents := '']
		ifFalse:
			["different index, new selection"
			selectionIndex := anInteger.
			self contentsIsString
				ifTrue: [contents := self selection]
				ifFalse: [contents := self selectionPrintString]].
	self changed: #selection.
	self changed: #contents.
	self changed: #selectionIndex.