testFloatCall
	"Test using generic FFI spec"
	| result |
	result := self ffiTestFloats: $A with: 65.0.
	self assert: result = 130.0