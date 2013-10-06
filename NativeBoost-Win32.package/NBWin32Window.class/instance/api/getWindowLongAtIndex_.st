getWindowLongAtIndex: nIndex 
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(LONG GetWindowLongA(HWND self, int nIndex)) 
			module: #user32
