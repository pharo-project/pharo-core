fill-styles
windowInactiveTitleFillStyleFor: aWindow
	"Return the window inactive title fillStyle for the given window."
	
	^(BitmapFillStyle fromForm: self stripesForm)
		origin: aWindow topLeft