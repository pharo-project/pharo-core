fill-styles-buttons
buttonMouseOverFillStyleFor: aButton
	"Return the button mouse over fillStyle for the given color."

	^(self buttonNormalFillStyleFor: aButton) adjustBrightness: -0.09375