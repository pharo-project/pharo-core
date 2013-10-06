scrollBarFills: aRectangle
	"Return true if a flop-out scrollbar fills the rectangle"

	retractableScrollBar ifFalse:[^false].
	
	((submorphs includes: scrollBar) and: [scrollBar bounds containsRect: aRectangle])
				ifTrue:[ ^true ].
	^((submorphs includes: hScrollBar) and: [hScrollBar bounds containsRect: aRectangle])
