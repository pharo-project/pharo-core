getBlinkTime
	"Returns the elapsed time, in milliseconds, required to invert the caret's pixels. The user can set this value using the Control Panel."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( uint GetCaretBlinkTime()) module: #user32
