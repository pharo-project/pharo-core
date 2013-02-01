unregistering
unregister: aWndClassName instance: hInstance

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >

	^ self nbCallout stdcall  
		function: #( BOOL UnregisterClassA ( LPCTSTR aWndClassName, HINSTANCE hInstance ))
		module: #user32	