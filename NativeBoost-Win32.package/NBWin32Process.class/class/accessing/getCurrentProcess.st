getCurrentProcess
	"Return an instance with a pseudohandle for the current process."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( NBWin32Process GetCurrentProcess()) module: #kernel32	
