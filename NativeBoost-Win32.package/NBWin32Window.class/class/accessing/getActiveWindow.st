getActiveWindow
	"Retrieves the window handle to the active window associated with the thread that calls the function. "	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( HWND GetActiveWindow()) module: #user32
