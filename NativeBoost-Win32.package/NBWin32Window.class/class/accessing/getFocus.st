getFocus 
	"Return the HWND currently having the input focus"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout stdcall function: #( HWND GetFocus ()) module: #user32
