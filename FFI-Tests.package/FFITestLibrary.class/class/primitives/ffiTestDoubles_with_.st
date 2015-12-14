ffiTestDoubles: f1 with: f2
	"FFITestLibrary ffiTestDoubles: $A with: 65.0"
	<cdecl: double 'ffiTestDoubles' (double double) module:'SqueakFFIPrims'>
	^self externalCallFailed