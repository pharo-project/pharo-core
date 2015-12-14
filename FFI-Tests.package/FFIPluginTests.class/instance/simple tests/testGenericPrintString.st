testGenericPrintString
	"Test using generic FFI spec"
	| result |
	result := FFITestLibrary ffiPrintString:'Hello World!'.
	self assert: result = 'Hello World!'.