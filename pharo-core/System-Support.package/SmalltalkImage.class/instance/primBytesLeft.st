memory space
primBytesLeft
	"Primitive. Answer the number of bytes available for new object data.
	Not accurate unless preceded by
		Smalltalk garbageCollectMost (for reasonable accuracy), or
		Smalltalk garbageCollect (for real accuracy).
	See Object documentation whatIsAPrimitive."

	<primitive: 112>
	^ 0