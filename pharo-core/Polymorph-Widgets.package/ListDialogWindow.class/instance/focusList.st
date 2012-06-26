as yet unclassified
focusList
	list ifEmpty: [ ^ self focusSearch].
	
	self listIndex: (( listIndex max: 1 ) min: list size).
	listMorph takeKeyboardFocus.