getWindowRect: rect
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(BOOL GetWindowRect(HWND self, RECT* rect)) module: #user32
