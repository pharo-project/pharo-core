colorForSelection: primarySelection
	
	^primarySelection 
		ifTrue: [ self selectionColor ]
		ifFalse: [ self secondarySelectionColor ]