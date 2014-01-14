getWindowFromPoint: point 
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		
		^self nbCall: #(HWND WindowFromPoint(NBWin32Point point)) 
			module: #user32
