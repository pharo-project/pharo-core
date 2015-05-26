getKeyboardType: nTypeFlag
	"Retrieves information about the current keyboard.	 
	"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^NBFFICallout stdcall: #(int GetKeyboardType(int nTypeFlag)) module: #user32
	