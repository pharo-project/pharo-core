addItemMorph: aMorph before: anotherMorph

	self setBoundsOf: aMorph before: anotherMorph.
	self band addBrick: aMorph before: anotherMorph.
	(self isPartiallyVisible: aMorph) ifFalse: [ self band removeBrick: aMorph. ^ nil ].
	^ aMorph