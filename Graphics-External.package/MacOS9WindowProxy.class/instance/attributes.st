accessing
attributes
	| val |
	val := ByteArray new: 8.
	val 
		unsignedLongAt: 1
		put: windowClass
		bigEndian: Smalltalk isBigEndian.
	val 
		unsignedLongAt: 5
		put: windowAttributes
		bigEndian: Smalltalk isBigEndian.
	^ val