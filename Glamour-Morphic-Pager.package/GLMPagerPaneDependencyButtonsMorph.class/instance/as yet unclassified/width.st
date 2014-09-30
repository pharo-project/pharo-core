width
	|width|
	width := pagerModel isNotNil
		ifTrue: [ ((indicatorButtons size * (pagerModel circleButtonSize )) + ((indicatorButtons size - 1) * pagerModel dependencyButtonSize)) ]
		ifFalse: [ 0 ].
	^ width