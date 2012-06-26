fill-styles
buttonPanelNormalFillStyleFor: aPanel
	"Return the normal panel fillStyle for the given panel."
	
	^(BitmapFillStyle fromForm: self stripesForm)
		origin: aPanel topLeft