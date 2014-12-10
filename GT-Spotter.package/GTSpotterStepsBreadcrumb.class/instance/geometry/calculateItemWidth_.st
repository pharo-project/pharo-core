calculateItemWidth: aBrick
	
	"width of other bricks depends from the width of the last one"
	^ aBrick isLastInOwner
		ifTrue: [ ((aBrick approximateWidth min: (self width / 2)) max: ((self width - ((self maxNumberOfSteps - 1) * aBrick layoutProperties marginRight)) / self maxNumberOfSteps)) floor ]
		ifFalse: [ ((self width - self band lastSubbrick width - ((self maxNumberOfSteps - 1) * aBrick layoutProperties marginRight)) / (self maxNumberOfSteps - 1)) floor ]
	