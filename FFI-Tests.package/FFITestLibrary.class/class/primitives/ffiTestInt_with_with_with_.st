ffiTestInt: c1 with: c2 with: c3 with: c4
	"FFITestLibrary ffiTestInt: $A with: 65 with: 65.0 with: true"
	<cdecl: long 'ffiTestInts' (long long long long) module:'SqueakFFIPrims'>
	^self externalCallFailed