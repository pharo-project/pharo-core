top window
closeTopWindow
	"Try to close the top window.  It may of course decline"
	TopWindow ifNotNil:
		[TopWindow delete]