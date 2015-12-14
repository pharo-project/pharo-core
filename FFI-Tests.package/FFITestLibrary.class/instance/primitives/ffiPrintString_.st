ffiPrintString: aString
	"FFITestLibrary new ffiPrintString: 'Hello'"
	<cdecl: char* 'ffiPrintString' (char *)>
	^self externalCallFailed