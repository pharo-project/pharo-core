getCurrentThread
	"Return an instance with a pseudohandle for the current thread."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( NBWin32Thread GetCurrentThread()) module: #kernel32	
