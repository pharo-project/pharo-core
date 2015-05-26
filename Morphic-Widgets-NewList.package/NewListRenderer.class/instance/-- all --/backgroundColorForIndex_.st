backgroundColorForIndex: anIndex

	^ (self isSelectedIndex: anIndex)
		ifTrue: [ self selectedBackgroundColor ]
		ifFalse: [ Color transparent ]