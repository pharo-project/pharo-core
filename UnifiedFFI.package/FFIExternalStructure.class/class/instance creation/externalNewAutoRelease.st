externalNewAutoRelease
	"Create an instance of the receiver on the external heap (with GC)"
	^self fromHandle: (ExternalAddress allocate: self byteSize) autoRelease