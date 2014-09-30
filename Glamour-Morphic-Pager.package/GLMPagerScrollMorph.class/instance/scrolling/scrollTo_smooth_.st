scrollTo: aValue smooth: isSmooth

 	isSmooth ifTrue: [	self glmAnimateValue: aValue duration: 200]
				ifFalse: [self scrollValue: aValue ].