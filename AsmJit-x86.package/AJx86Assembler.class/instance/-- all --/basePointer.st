basePointer
	^ self is32BitMode ifTrue: [ EBP ] ifFalse: [ BP ]