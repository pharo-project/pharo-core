hide
	"destroy the window"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		stdcall;
		options: #( + optMayGC );  " calls windowproc"
		function: #( BOOL ShowWindow ( HWND self, SW_HIDE ))
		module: #user32
