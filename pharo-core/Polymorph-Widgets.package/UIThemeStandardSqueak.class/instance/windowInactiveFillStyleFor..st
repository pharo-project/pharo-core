fill-styles
windowInactiveFillStyleFor: aWindow
	"Return the window inactive fillStyle for the given window."
	
	^aWindow
		gradientWithColor: aWindow paneColorToUse duller