widthOf: aBrick allowed: width percents: percents

	percents <= 0 ifTrue: [ ^ 0 ].
	^ (width * aBrick layoutProperties horizontalPercent / percents) ceiling