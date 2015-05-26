isEnabled
	"Determines whether the specified window is enabled for mouse and keyboard input. "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(BOOL IsWindowEnabled(HWND self)) module: #user32
