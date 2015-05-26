getWindowFromPoint: point 
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		
		^self nbCall: #(HWND WindowFromPoint(POINT point)) 
			module: #user32
