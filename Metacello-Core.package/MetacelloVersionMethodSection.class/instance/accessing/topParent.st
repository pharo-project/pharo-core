topParent
	self parent == nil
		ifTrue: [ ^ self ].
	^ self parent topParent