getCurrentProcessId
	"Returns the process identifier (PID) of the calling process."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( DWORD GetCurrentProcessId()) module: #kernel32	
