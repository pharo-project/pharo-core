stackPointer
	^ self is32 ifTrue: [ ESP ] ifFalse: [ RSP ]