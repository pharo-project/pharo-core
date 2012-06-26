rectangle functions
intersect: aRectangle 
	"Answer a new Quadrangle whose region is the intersection of the 
	receiver's area and aRectangle.
	 5/24/96 sw: removed hard-coded class name so subclasses can gain same functionality."

	^ self class
	 	region: (super intersect: aRectangle)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor