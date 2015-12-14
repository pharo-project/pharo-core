getWindowStyle
	"Returns the window style for the focus window"
	
	^self getWindowLong: self getFocus index: GWL_STYLE
