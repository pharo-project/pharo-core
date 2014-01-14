create: options initialiSize: dwInitialSize maximumSize: dwMaximumSize

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout stdcall function: 
		#( NBWin32Heap HeapCreate (
			DWORD options, 
			SIZE_T dwInitialSize,
			SIZE_T dwMaximumSize) ) 
		module: #Kernel32
