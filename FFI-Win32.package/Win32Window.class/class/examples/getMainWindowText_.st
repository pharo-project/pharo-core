getMainWindowText: aString
	"Returns the window text of the main window"
	
	self new getWindowText: Win32Window getFocus 