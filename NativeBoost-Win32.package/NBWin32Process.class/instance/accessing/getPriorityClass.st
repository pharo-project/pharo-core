getPriorityClass
	"Return the priority class for the specified process"	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^NBFFICallout stdcall: #( DWORD GetPriorityClass(HANDLE self)) module: #kernel32	
