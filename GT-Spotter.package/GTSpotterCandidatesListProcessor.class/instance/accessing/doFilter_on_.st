doFilter: aStringQuery on: aStream
	^ filterBlock isNil
		ifTrue: [ super doFilter: aStringQuery on: aStream ]
		ifFalse: [ filterBlock value: aStringQuery value: aStream ]