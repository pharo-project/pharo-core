hasOnlyOneItem

	self isEmpty ifTrue: [ ^ self ].
	^ self head = self tail