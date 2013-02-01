accessing
stackSize
	"Answer a number of bytes, which takes a value of given type when pushed on stack"
	
	^ self typeSize alignedTo: self stackArgumentAlignment 