width
	|width|
	width := pagerModel isNotNil
		ifTrue: [ ( indicatorButtons size * ( pagerModel circleButtonSize ) ) ]
		ifFalse: [ 0 ].
	^ width