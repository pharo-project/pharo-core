getDC
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCall: #( HDC GetDC ( HWND self ) )
		module: #user32