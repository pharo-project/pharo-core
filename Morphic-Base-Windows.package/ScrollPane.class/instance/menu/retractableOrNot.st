retractableOrNot
	"Change scroll bar operation"

	retractableScrollBar := retractableScrollBar not.
	retractableScrollBar
		ifTrue: [self removeMorph: scrollBar]
		ifFalse: [(submorphs includes: scrollBar) 
					ifFalse: 
						[self privateAddMorph: scrollBar atIndex: 1.
						self privateAddMorph: hScrollBar atIndex: 1]].
	self extent: self extent.
