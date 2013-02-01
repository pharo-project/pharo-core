testing
isVisible
	"Retrieves the visibility state of the specified window. . "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(BOOL IsWindowVisible(HWND self)) module: #user32
