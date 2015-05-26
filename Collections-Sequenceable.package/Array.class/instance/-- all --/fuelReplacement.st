fuelReplacement
	^ self == Smalltalk specialObjectsArray
		ifTrue: [ nil ]
		ifFalse: [ self ]