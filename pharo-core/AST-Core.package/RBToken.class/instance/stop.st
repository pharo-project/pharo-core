accessing
stop
	^ sourcePointer isNil 
		ifTrue: [ -1 ]
		ifFalse: [ self start + self length - 1 ]