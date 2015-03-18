doubleClick: anEvent

	self isEnabled ifTrue: [ ^ self ].
	
	self isEnabled ifFalse: [
		self doubleClickAction ifNotNil: [ :aBlock | aBlock value ].
		self enable.
		super mouseDown: anEvent ]