calculateItemWidth: aBrick
	|sWidth bWidth|
	sWidth := self themer spotterThemer breadcrumbSeparatorWidth.
	bWidth := self width.
	
	"width of other bricks depends from the width of the last one"
	^ aBrick isLastInOwner
		ifTrue: [ ((aBrick labelBrick approximateWidth min: (bWidth / 2)) max: ((bWidth - ((self maxNumberOfSteps - 1) * sWidth)) / self maxNumberOfSteps)) floor ]
		ifFalse: [ ((bWidth - self band lastSubbrick width - ((self maxNumberOfSteps - 1) * sWidth)) / (self maxNumberOfSteps - 1)) floor ]
	