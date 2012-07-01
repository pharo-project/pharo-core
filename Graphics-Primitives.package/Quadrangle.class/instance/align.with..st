transforming
align: aPoint1 with: aPoint2 
	"Answer a new Quadrangle translated by aPoint2 - aPoint1.
	 5/24/96 sw: removed hard-coded class name so subclasses can gain same functionality."

	^ self class
		region: (super translateBy: aPoint2 - aPoint1)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor