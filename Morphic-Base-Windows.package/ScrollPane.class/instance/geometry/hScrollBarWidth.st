hScrollBarWidth
"Return the width of the horizontal scrollbar"


	| w |
	
	w := bounds width - (2 * borderWidth).
	
	(retractableScrollBar not and: [self vIsScrollbarNeeded])
		ifTrue: [w := w - self scrollBarThickness ].
		
	^w 
