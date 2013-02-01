accessing
setWindowText: lpString
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(BOOL SetWindowTextA(HWND self, LPCTSTR lpString)) 
			module: #user32
