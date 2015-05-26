isUnicode
	"Determines whether the specified window is a native Unicode window.  "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(BOOL IsWindowUnicode(HWND self)) module: #user32
