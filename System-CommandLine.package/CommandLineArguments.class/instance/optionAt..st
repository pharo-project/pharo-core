accessing
optionAt: aString
	^ (aString size = 1)
		ifTrue: [ self shortOptionAt: aString ]
		ifFalse: [ self longOptionAt: aString ]