destinationIndex
	^ self is32BitMode ifTrue: [ EDI ] ifFalse: [ DI ]