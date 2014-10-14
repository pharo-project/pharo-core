doubleClick: anEvent

	self isEnabled ifTrue: [ ^ self ].
	
	self isEnabled ifFalse: [
		self enable.
		super mouseDown: anEvent ]