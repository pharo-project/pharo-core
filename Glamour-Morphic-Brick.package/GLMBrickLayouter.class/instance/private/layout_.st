layout: aBrick

	aBrick wrappedBounds isWidthDirty
		ifTrue: [ self widthTraverser layoutAround: aBrick inContext: nil ].
	aBrick wrappedBounds isHeightDirty
		ifTrue: [ self heightTraverser layoutAround: aBrick inContext: nil ]