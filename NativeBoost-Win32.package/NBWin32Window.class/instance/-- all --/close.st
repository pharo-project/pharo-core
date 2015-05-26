close
	"Minimizes (but does not destroy) the specified window"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout stdcall 
		function: #( BOOL CloseWindow( HWND self))
		module: #user32
