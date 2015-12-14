ffiTestLongLong: long1 with: long2
	"FFITestLibrary ffiTestLongLong: 3 with: 4"
	<cdecl: longlong 'ffiTestLongLong' (longlong longlong) module:'SqueakFFIPrims'>
	^self externalCallFailed