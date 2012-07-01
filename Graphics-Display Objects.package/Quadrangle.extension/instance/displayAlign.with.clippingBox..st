*Graphics-Display Objects
displayAlign: aPoint1 with: aPoint2 clippingBox: aRectangle 
	"Display the border and region of the receiver on the Display so that its 
	position at aPoint1 is aligned with position aPoint2. The displayed 
	information should be clipped so that only information with the area 
	determined by aRectangle is displayed." 

	self displayOn: Display align: aPoint1 with: aPoint2 clippingBox: aRectangle