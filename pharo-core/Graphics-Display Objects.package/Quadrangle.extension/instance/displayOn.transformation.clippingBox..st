*Graphics-Display Objects
displayOn: aDisplayMedium transformation: aWindowingTransformation clippingBox: aRectangle 
	"Display the border and region of the receiver so that it is scaled and 
	translated with respect to aWindowingTransformation. The displayed 
	information should be clipped so that only information with the area 
	determined by aRectangle is displayed."
	| screenRectangle |
	screenRectangle := (aWindowingTransformation applyTo: self) intersect: aRectangle.
	borderWidth ~~ 0 & (insideColor ~~ nil) ifTrue: 
		[ aDisplayMedium 
			fill: screenRectangle
			fillColor: Color black.	"borderColor"
		aDisplayMedium 
			fill: (screenRectangle insetBy: borderWidth)
			fillColor: insideColor ]