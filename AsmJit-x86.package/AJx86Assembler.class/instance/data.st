register
data
	^ self is32BitMode ifTrue: [ EDX ] ifFalse: [ DX ]