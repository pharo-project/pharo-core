*Graphics-Display Objects
displayTransformation: aWindowingTransformation clippingBox: aRectangle 
	"Display the border and region of the receiver on the Display so that it 
	is scaled and translated with respect to aWindowingTransformation. The 
	displayed information should be clipped so that only information with 
	the area determined by aRectangle is displayed." 

	self displayOn: Display transformation: aWindowingTransformation clippingBox: aRectangle