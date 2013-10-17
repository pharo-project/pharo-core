externalNew
	"Allocate enough bytes on external heap to hold my instance data, then answer an instance
	which using external data.
	
	Please note, that if you create my instances on external heap, do not forget to free memory after use, e.g.
	
	struct address free.
	"
	
	^ self fromPointer: (NativeBoost allocate: self instanceSize).
