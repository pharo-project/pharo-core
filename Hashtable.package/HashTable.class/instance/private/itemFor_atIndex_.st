itemFor: aKey atIndex: anInteger
	| item |
	item := self table at: anInteger.
	[ (item isNil or: [ self is: item key sameAs: aKey ]) not ]
		whileTrue: [ item := item next ].
	^item