updateFindStartIndex
	| si |
	textArea ifNil: [ ^self ].
	textArea changed.
	self changed: #replaceEnabled.
	si := textArea selectionInterval.
	self findStartIndex: (self searchBackwards ifTrue: [si first - 1] ifFalse: [si last + 1])