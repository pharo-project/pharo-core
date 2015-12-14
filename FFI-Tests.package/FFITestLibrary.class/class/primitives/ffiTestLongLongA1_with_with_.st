ffiTestLongLongA1: byte with: long1 with: long2
	"FFITestLibrary ffiTestLongLongA1: 3 with: 4 with: 5"
	<cdecl: longlong 'ffiTestLongLonga1' (char longlong longlong) module:'SqueakFFIPrims'>
	^self externalCallFailed