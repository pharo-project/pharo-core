proxy functions
pushRemappableOop: oop
	"Record the given object in a the remap buffer. Objects in this buffer are remapped when a compaction occurs. This facility is used by the interpreter to ensure that objects in temporary variables are properly remapped."

	^ self simpleCall
