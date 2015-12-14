testGenericShortCall
	"Test using generic FFI spec"
	| result |
	result := FFITestLibrary ffiTestShort: $A with: 65 with: 65.0 with: true.
	self assert: result = 130.