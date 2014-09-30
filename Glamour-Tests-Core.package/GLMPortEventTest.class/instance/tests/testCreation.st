testCreation
	| anEvent |
	anEvent := GLMPortEvent on: 1 previouslyValued: 2.
	self assert: anEvent port equals: 1.
	self assert: anEvent oldValue equals: 2.
	self assert: anEvent transmissionContext isEmpty