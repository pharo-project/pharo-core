testLibraryPrintString
	"Test using call from ExternalLibrary"
	| result |
	result := FFITestLibrary new ffiPrintString:'Hello World!'.
	self assert: result = 'Hello World!'.