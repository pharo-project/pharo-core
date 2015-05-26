ifLocked: aBlock ifUnlocked: anotherBlock
	self deprecated: 'just use locked ifTrue:' on: '2 July 2014' in: 'Pharo40'.
	self locked ifTrue: aBlock ifFalse: anotherBlock