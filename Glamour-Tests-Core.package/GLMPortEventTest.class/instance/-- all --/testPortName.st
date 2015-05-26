testPortName
	| anEvent |
	anEvent := GLMPortEvent
		on:
			((GLMPort new)
				name: '1';
				yourself)
		previouslyValued: 2.
	self assert: anEvent portName equals: '1'