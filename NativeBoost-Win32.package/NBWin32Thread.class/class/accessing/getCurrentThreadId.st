getCurrentThreadId
	"Returns the thread identifier of the calling thread. Until the thread terminates, the thread identifier uniquely identifies the thread throughout the system."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #(DWORD GetCurrentThreadId()) module: #kernel32	
