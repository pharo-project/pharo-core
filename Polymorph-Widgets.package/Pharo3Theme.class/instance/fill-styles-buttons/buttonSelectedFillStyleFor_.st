buttonSelectedFillStyleFor: aButton
	"Return the normal button fillStyle for the given button."
	
	^ SolidFillStyle color: (self glamorousLightSelectionColorFor: aButton)
	