lastClicked: aBoolean

	self nodeModel lastClicked: aBoolean.
	aBoolean
		ifTrue: [ self model highlightedItem: self nodeModel content ]
		ifFalse: [ self model highlightedItem: nil ].