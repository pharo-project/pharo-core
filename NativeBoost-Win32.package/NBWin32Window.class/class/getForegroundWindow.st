accessing
getForegroundWindow 
	"Returns the handle of the foreground window (the window with which the user is currently working)."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( HWND GetForegroundWindow()) module: #user32
