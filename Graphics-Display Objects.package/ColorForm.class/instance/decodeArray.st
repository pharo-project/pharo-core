postscript generation
decodeArray
	^self depth = 1 ifTrue:['[1 0]'] ifFalse:['[0 255]'].