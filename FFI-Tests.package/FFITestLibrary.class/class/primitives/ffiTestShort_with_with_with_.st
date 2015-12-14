ffiTestShort: c1 with: c2 with: c3 with: c4
	"FFITestLibrary ffiTestShort: $A with: 65 with: 65.0 with:1"
	<cdecl: short 'ffiTestShorts' (short short short short) module:'SqueakFFIPrims'>
	^self externalCallFailed