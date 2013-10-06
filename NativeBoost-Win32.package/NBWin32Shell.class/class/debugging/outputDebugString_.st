outputDebugString: lpOutputString
	"Sends a string to the debugger for display.  Use tools like DebugView to display"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(void OutputDebugStringA(LPCTSTR lpOutputString)) module: #Kernel32
	

