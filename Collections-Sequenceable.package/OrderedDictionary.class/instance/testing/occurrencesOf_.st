occurrencesOf: anObject
	^ self values
		inject: 0
		into: [:total :each |
			each = anObject
				ifTrue: [total + 1]
				ifFalse: [total]]