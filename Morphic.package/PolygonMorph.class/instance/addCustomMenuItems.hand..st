menu
addCustomMenuItems: aMenu hand: aHandMorph 
	| |
	super addCustomMenuItems: aMenu hand: aHandMorph.
	aMenu
		addUpdating: #handlesShowingPhrase
		target: self
		action: #showOrHideHandles.
	vertices size > 2
		ifTrue: [ self addPolyLIneCurveMenuItems: aMenu hand: aHandMorph ].
	aMenu add: 'specify dashed line' translated action: #specifyDashedLine.
	"aMenu add: 'use debug border' translated action: #showSegmentsBorderStyle."
	self isOpen
		ifTrue: [self addPolyArrowMenuItems: aMenu hand: aHandMorph]
			ifFalse: [self addPolyShapingMenuItems: aMenu hand: aHandMorph]