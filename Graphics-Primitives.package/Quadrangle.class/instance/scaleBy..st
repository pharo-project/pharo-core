transforming
scaleBy: aPoint 
	"Answer a new Quadrangle scaled by aPoint."

	^ self class
		region: (super scaleBy: aPoint)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor