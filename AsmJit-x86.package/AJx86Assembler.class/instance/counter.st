register
counter
	^ self is32BitMode ifTrue: [ ECX ] ifFalse: [ CX ]