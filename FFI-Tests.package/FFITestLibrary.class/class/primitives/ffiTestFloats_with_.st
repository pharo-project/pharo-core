ffiTestFloats: f1 with: f2
	"FFITestLibrary ffiTestFloats: $A with: 65.0"
	<cdecl: float 'ffiTestFloats' (float float) module:'SqueakFFIPrims'>
	^self externalCallFailed