ffiTestLongLongA3: byte1 with: long1 with: byte2
	"FFITestLibrary ffiTestLongLongA3: 3 with: 4 with: 5"
	<cdecl: longlong 'ffiTestLongLonga3' (char longlong char) module:'SqueakFFIPrims'>
	^self externalCallFailed