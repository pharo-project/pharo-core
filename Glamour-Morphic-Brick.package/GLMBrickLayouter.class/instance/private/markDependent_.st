markDependent: aBrick

	(aBrick wrappedBounds isWidthDirty | aBrick wrappedBounds isHeightDirty)
		ifTrue: [
			"we mark layout as dirty of brick itself"
			aBrick layout markDirty.
			"and its direct parent"
			aBrick owner ifNotNil: [ :o | o isBrick ifTrue: [ o layout markDirty ] ] ].

	aBrick wrappedBounds isWidthDirty
		ifTrue: [ self widthTraverser markDirtyAround: aBrick inContext: nil ].
	aBrick wrappedBounds isHeightDirty
		ifTrue: [ self heightTraverser markDirtyAround: aBrick inContext: nil ]
	