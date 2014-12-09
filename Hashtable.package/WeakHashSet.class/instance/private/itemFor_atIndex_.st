itemFor: aKey atIndex: anInteger
	| item |
	
	self fixAt: anInteger.
	item := self table at: anInteger.	
		
	[ item notNil ]
		whileTrue: [
			(self is: item key sameAs: aKey)
				ifTrue: [ ^item ].
			item := item next ].
	^nil