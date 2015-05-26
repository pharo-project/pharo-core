getClipboardOwnerWindow
	"Retrieves the window handle of the current owner of the clipboard."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( HWND GetClipboardOwner()) module: #user32
