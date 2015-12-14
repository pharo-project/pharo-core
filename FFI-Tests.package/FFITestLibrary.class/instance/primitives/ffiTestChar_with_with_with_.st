ffiTestChar: c1 with: c2 with: c3 with: c4
	"FFITestLibrary new ffiTestChar: $A with: 65 with: 65.0 with: true"
	<cdecl: char 'ffiTestChars' (char char char char)>
	^self externalCallFailed