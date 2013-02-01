public API
methodAssembly: aBlock

	"We're get here from a method, which contains  a native code.
	There are following error cases:
	  - method does not contains a NativeBoost primitive
	  - method's native code platform id doesn't match the current platform id
	  - method having no native code generated yet
	  - a native code runs but caused primitive failure
	"
	
	^ self handleFailureIn: thisContext sender nativeCode:
		[:gen | aBlock cull: gen cull: gen proxy cull: gen asm. gen bytes ]
