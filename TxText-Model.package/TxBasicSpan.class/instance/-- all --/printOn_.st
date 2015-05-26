printOn: aStream

	self isAtStart ifTrue: [ aStream nextPutAll: '<< ' ].
	self printContentsOn: aStream.
	self isAtEnd ifTrue: [ aStream nextPutAll: ' >>' ].