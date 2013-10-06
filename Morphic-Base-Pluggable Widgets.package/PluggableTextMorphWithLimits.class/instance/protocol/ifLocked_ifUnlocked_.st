ifLocked: aBlock ifUnlocked: anotherBlock

	self locked ifTrue: aBlock ifFalse: anotherBlock