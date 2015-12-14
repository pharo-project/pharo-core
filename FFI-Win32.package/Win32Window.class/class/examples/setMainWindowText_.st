setMainWindowText: aString
	"Sets the window text of the main window"
	
	self new apiSetWindowText: Win32Window getFocus text: aString