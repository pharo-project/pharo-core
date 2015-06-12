value

	| currentValue |
	currentValue := super value.
	
	^ (currentValue isNil or: [ currentValue key ~~ Smalltalk session ])
		ifTrue: [ self default ]
		ifFalse: [ currentValue value ]