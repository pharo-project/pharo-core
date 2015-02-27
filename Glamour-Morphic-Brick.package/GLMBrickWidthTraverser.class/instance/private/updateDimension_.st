updateDimension: aBrick

	"my height is already calculated, maybe because it children triggered calculation"
	aBrick wrappedBounds isWidthClean ifTrue: [ ^ self ].
	(self dimensionPolicy: aBrick)  updateWidth: aBrick