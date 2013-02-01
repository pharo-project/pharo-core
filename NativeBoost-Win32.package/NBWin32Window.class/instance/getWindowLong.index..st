api
getWindowLong: hWnd index: nIndex 
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(LONG GetWindowLongA(HWND hWnd, int nIndex)) 
			module: #user32
