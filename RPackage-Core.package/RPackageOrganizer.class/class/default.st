singleton
default
	
	default isNil ifTrue: [
		default := self new.
		default ].
	^ default