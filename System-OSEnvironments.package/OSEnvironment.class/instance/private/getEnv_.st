getEnv: string
	"This method calls the Standard C Library getenv() function"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( String getenv (String string) ) module: NativeBoost CLibrary