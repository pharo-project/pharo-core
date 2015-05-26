getTopWindow
	"Examines the Z order of the child windows associated with the specified parent window and retrieves the handle of the child window at the top of the Z order."
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(HWND GetTopWindow(HWND self)) module: #user32
