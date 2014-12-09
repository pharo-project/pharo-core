at: aKey put: aValue	
	| index item |
	index := self computeIndex: aKey.
	item := self itemFor: aKey atIndex: index.
	item isNil
		ifTrue: [ self addKey: aKey value: aValue ]
		ifFalse: [ item value: aValue ].
	^aValue