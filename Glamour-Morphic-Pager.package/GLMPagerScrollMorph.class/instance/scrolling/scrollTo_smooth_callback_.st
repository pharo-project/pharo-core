scrollTo: aValue smooth: isSmooth callback: aBlock

 	isSmooth ifTrue: [	self glmAnimateValue: aValue duration: 200 callback: aBlock]
				ifFalse: [self scrollValue: aValue. aBlock value ].