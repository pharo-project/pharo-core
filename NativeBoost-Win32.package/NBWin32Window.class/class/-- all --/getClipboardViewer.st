getClipboardViewer
	"Retrieves the handle of the first window in the clipboard viewer chain."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( HWND GetClipboardOwner()) module: #user32
