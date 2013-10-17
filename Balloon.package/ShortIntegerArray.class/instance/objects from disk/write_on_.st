write: shortInteger on: aStream
	^ Smalltalk isLittleEndian
		ifFalse: [ self write: shortInteger bigEndianOn: aStream ]
		ifTrue: [ self write: shortInteger littleEndianOn: aStream ]