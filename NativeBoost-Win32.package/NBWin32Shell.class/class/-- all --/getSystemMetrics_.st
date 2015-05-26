getSystemMetrics: nIndex
	"Retrieves the specified system metric or system configuration setting."
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^NBFFICallout stdcall: #(int GetSystemMetrics(int nIndex)) module: #user32
	