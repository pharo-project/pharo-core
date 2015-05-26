primarySelectionInterval
	^ self selectionStart notNil
		ifTrue: [ self selectionStart stringIndex to: self selectionStop stringIndex - 1 ]
		ifFalse: [ 0 to: -1 ].
