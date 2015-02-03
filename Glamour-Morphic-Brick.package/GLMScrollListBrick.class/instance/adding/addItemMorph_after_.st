addItemMorph: aMorph after: anotherMorph

	self addBrickBack: aMorph.
	self setBoundsOf: aMorph after: anotherMorph.
	(self isPartiallyVisible: aMorph) ifFalse: [ self removeBrick: aMorph. ^ nil ].
	^ aMorph