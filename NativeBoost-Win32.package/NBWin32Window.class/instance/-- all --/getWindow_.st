getWindow: wCmd 
	"Retrieves the handle of a window that has the specified relationship (Z order or owner) to the specified window."
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(HWND GetWindow(HWND self, UINT wCmd)) module: #user32
