accessing
getDesktopWindow
	"Return the handle of the windows desktop window"	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( HWND GetDesktopWindow()) module: #user32
