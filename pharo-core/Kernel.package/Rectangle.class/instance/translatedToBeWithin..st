rectangle functions
translatedToBeWithin: aRectangle
	"Answer a copy of the receiver that does not extend beyond aRectangle.  7/8/96 sw"

	^ self translateBy: (self amountToTranslateWithin: aRectangle)