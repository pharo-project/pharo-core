buttonSelectedMouseOverFillStyleFor: aButton
	"Return the normal button fillStyle for the given button."

	^ CompositeFillStyle 
		fillStyles: {
			self buttonSelectedFillStyleFor: aButton.
			SolidFillStyle color: (Color black alpha: 0.1)
		}			
