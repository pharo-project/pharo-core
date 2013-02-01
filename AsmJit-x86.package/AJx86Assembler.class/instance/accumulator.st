register
accumulator
	^ self is32BitMode ifTrue: [ EAX ] ifFalse: [ AX ]