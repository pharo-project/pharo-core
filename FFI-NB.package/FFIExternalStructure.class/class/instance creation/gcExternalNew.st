gcExternalNew
	"Create an instance of the receiver on the external heap (with GC)"
	^self fromHandle: (ExternalAddress gcallocate: self byteSize)