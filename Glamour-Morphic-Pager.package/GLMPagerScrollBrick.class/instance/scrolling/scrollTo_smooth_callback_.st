scrollTo: aValue smooth: isSmooth callback: aBlock
	
 	isSmooth ifTrue: [ self glmAnimateValue: aValue duration: 300 callback: aBlock ]
				ifFalse: [ self scrollValue: (self convertScrollValue: aValue). aBlock value ].