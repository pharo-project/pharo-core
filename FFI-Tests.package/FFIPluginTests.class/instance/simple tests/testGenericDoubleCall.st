testGenericDoubleCall
	"Test using generic FFI spec"
	| result |
	result := FFITestLibrary ffiTestDoubles: $A with: 65.0.
	self assert: result = 130.0