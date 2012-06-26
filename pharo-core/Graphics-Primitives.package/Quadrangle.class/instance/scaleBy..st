transforming
scaleBy: aPoint 
	"Answer a new Quadrangle scaled by aPoint.
	 5/24/96 sw: removed hard-coded class name so subclasses can gain same functionality."

	^ self class
		region: (super scaleBy: aPoint)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor