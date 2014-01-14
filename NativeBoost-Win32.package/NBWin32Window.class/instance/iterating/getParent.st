getParent
	"Retrieves the handle of the specified child window's parent window.
	 If the window has no parent window, the return value is nil."
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(HWND GetParent(HWND self)) module: #user32
