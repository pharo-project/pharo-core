addItemMorph: aMorph after: anotherMorph

	self band addBrickBack: aMorph.
	self setBoundsOf: aMorph after: anotherMorph.
	(self isPartiallyVisible: aMorph) ifFalse: [ self band removeBrick: aMorph. ^ nil ].
	^ aMorph