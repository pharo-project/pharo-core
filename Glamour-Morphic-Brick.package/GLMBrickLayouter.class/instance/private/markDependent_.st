markDependent: aBrick

	(aBrick wrappedBounds isWidthDirty | aBrick wrappedBounds isHeightDirty)
		ifTrue: [ aBrick layout markDirty ].

	aBrick wrappedBounds isWidthDirty
		ifTrue: [ self widthTraverser markDirtyAround: aBrick inContext: nil ].
	aBrick wrappedBounds isHeightDirty
		ifTrue: [ self heightTraverser markDirtyAround: aBrick inContext: nil ]
	