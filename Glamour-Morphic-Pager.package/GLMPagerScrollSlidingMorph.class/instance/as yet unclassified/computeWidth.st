computeWidth
	|width numberOfVisiblePages|

	width := pagerModel isNotNil
		ifTrue: [
			numberOfVisiblePages := pagerModel numberOfVisiblePages.
			numberOfVisiblePages > pagerModel size
				ifTrue: [ numberOfVisiblePages := pagerModel size ].
			(pagerModel circleButtonSize) * numberOfVisiblePages + ((numberOfVisiblePages - 1) * pagerModel dependencyButtonSize).
		]
		ifFalse: [ 0 ].
		
	^ width.