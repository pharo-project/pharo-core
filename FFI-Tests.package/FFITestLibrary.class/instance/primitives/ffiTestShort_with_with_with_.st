ffiTestShort: c1 with: c2 with: c3 with: c4
	"FFITestLibrary new ffiTestShort: $A with: 65 with: 65.0 with: $A"
	<cdecl: short 'ffiTestShorts' (short short short short)>
	^self externalCallFailed