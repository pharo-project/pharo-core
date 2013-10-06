intersect: aRectangle 
	"Answer a new Quadrangle whose region is the intersection of the 
	receiver's area and aRectangle."

	^ self class
	 	region: (super intersect: aRectangle)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor