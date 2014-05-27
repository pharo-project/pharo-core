tryPrimitiveFor: method receiver: receiver args: arguments 
	"If this method has a primitive index, then run the primitive and return its result.
	Otherwise (and also if the primitive fails) return PrimitiveFailToken,
	as an indication that the method should be activated and run as bytecodes."
	| primIndex |
	(primIndex := method primitive) = 0 
		ifTrue: [ ^ self class primitiveFailToken ].
	^ self doPrimitive: primIndex method: method receiver: receiver args: arguments