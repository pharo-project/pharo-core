as yet unclassified
getModuleHandle: lpModuleName
"The GetModuleHandle function retrieves a module handle for the specified module if the file has been mapped into the address space of the calling process."

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout 
		options: #( - WinUnicode );
		stdcall;
		function: #( HMODULE GetModuleHandleA (LPCTSTR lpModuleName ) ) 
		module: #Kernel32
