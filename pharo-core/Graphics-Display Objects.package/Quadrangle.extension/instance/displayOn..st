*Graphics-Display Objects
displayOn: aDisplayMedium
	"Display the border and insideRegion of the receiver."

	borderWidth ~~ 0
		ifTrue:	[aDisplayMedium
				border: self region
				widthRectangle: borderWidth
				rule: Form over
				fillColor: borderColor].
	insideColor ~~ nil
		ifTrue:	[aDisplayMedium fill: self inside fillColor: insideColor]