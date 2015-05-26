testCreationWithTransmissionContext
	| anEvent aContext |
	aContext := OrderedCollection new.
	anEvent := GLMPortEvent on: 1 previouslyValued: 2 in: aContext.
	self assert: anEvent port equals: 1.
	self assert: anEvent oldValue equals: 2.
	self assert: anEvent transmissionContext equals: aContext