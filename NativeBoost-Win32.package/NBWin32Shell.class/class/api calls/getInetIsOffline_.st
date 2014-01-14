getInetIsOffline: dwFlags
	"Retrieves the specified system metric or system configuration setting."
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^NBFFICallout stdcall: #(BOOL InetIsOffline(DWORD dwFlags)) module:  'url.dll'
	