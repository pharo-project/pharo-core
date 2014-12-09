addItemMorph: aMorph after: anotherMorph

	self band addBrickBack: aMorph.
	self setBoundsOf: aMorph after: anotherMorph.
	^ aMorph