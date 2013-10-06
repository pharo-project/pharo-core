addCustomMenuItems: aCustomMenu hand: aHandMorph
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	retractableScrollBar
		ifTrue: [aCustomMenu add: 'make scrollbar inboard' translated action: #retractableOrNot]
		ifFalse: [aCustomMenu add: 'make scrollbar retractable' translated action: #retractableOrNot].