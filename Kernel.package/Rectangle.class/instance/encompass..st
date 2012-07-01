rectangle functions
encompass: aPoint 
	"Answer a Rectangle that contains both the receiver and aPoint.  5/30/96 sw"

	^ Rectangle 
		origin: (origin min: aPoint)
		corner: (corner max:  aPoint)