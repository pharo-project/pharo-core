menu
addCustomMenuItems: aCustomMenu hand: aHandMorph
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	retractableScrollBar
		ifTrue: [aCustomMenu add: 'make scrollbar inboard' translated action: #retractableOrNot]
		ifFalse: [aCustomMenu add: 'make scrollbar retractable' translated action: #retractableOrNot].
	scrollBarOnLeft
		ifTrue: [aCustomMenu add: 'scroll bar on right' translated action: #leftOrRight]
		ifFalse: [aCustomMenu add: 'scroll bar on left' translated action: #leftOrRight]