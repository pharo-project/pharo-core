fill-styles-buttons
buttonMouseOverFillStyleFor: aButton
	"Return the button mouse over fillStyle for the given color."

	^ CompositeFillStyle 
		fillStyles: {
			self buttonNormalFillStyleFor: aButton.
			SolidFillStyle color: (Color black alpha: 0.1)
		}			
