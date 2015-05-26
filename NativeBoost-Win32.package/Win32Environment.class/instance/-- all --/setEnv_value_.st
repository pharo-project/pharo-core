setEnv: nameString value: valueString
	"This method calls the Standard C Library getenv() function"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( int SetEnvironmentVariableA ( String nameString, String valueString) ) module: #Kernel32 options: #( optStringOrNull )