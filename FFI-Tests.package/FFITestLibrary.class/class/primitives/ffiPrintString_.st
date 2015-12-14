ffiPrintString: aString
	"FFITestLibrary ffiPrintString: 'Hello'"
	<cdecl: char* 'ffiPrintString' (char *) module:'SqueakFFIPrims'>
	^self externalCallFailed