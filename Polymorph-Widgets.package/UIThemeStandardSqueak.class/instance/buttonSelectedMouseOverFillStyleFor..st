fill-styles-buttons
buttonSelectedMouseOverFillStyleFor: aButton
	"Return the button selected mouse over fillStyle for the given color."
	
	^(self buttonSelectedFillStyleFor: aButton) adjustBrightness: -0.09375