updateDimension: aBrick
	"my height is already calculated, maybe because my children triggered calculation"
	aBrick wrappedBounds isHeightClean ifTrue: [ ^ self ].
	
	(self dimensionPolicy: aBrick) updateHeight: aBrick