testGenericFloatCall
	"Test using generic FFI spec"
	| result |
	result := FFITestLibrary ffiTestFloats: $A with: 65.0.
	self assert: result = 130.0