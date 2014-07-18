getEnvSize: nameString

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( int GetEnvironmentVariableA ( String nameString, nil, 0 ) ) module: #Kernel32