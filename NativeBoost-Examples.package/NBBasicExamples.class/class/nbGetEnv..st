basic-external-function
nbGetEnv: str
"
	This is a basic example for making an external call. 
	This method calls a Standard C library getenv() function
"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( String getenv (String str) ) module: NativeBoost CLibrary