heightOf: aBrick allowed: height percents: percents

	percents <= 0 ifTrue: [ ^ 0 ].
	^ (height * aBrick layoutProperties verticalPercent / percents) ceiling