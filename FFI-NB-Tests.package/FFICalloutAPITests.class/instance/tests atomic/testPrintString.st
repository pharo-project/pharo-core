testPrintString
	"Test using generic FFI spec"
	| result |
	result := self ffiPrintString:'Hello World!'.
	self assert: result = 'Hello World!'.