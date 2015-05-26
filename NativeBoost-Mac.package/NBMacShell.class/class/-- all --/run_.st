run: commandString
	"self run: 'open http://www.google.com'."

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	^ self nbCall: #( int system (String commandString) ) module: NativeBoost CLibrary 