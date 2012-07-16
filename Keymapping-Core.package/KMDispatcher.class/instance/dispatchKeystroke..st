dispatching
dispatchKeystroke: aKeyEvent
	| currentTarget |
	KMLog log: aKeyEvent printString, String cr.

	KMBuffer uniqueInstance addEvent: aKeyEvent.

	currentTarget := self target.
	[ aKeyEvent wasHandled not and: [ currentTarget notNil ] ]
		whileTrue: [
			currentTarget dispatch: KMBuffer uniqueInstance buffer.
			currentTarget := currentTarget ownerTarget.
		].
	
	aKeyEvent wasHandled
		ifTrue: [ ^ self ].
	
	KMBuffer uniqueInstance clearBuffer.