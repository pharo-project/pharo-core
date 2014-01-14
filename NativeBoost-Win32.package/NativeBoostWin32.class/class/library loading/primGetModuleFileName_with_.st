primGetModuleFileName: lpFileName with: nSize

"The GetModuleFileName function retrieves the fully-qualified path for the file that contains the specified module that the current process owns."

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ NBFFICallout 
		stdcall: #(
			DWORD GetModuleFileNameA (
				0,
				char * lpFileName,
				DWORD nSize)) 
		module: #Kernel32
		options: #( - optCoerceNilToNull WinUnicode )
