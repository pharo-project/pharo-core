isWindow
	"Determines whether the specified window handle identifies an existing window "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(BOOL IsWindow(HWND self)) module: #user32
