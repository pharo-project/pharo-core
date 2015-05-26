register

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >

	^ self nbCallout stdcall 
		function: #( ATOM RegisterClassExA (WNDCLASSEX * self) ) 
		module: #user32