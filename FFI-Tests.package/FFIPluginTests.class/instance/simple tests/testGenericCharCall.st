testGenericCharCall
	"Test using generic FFI spec"
	| result |
	result := FFITestLibrary ffiTestChar: $A with: 65 with: 65.0 with: true.
	self assert: result isCharacter.
	self assert: result asciiValue = 130.