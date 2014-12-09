addItemMorph: aMorph before: anotherMorph

	self band addBrick: aMorph before: anotherMorph.
	self setBoundsOf: aMorph before: anotherMorph.
	^ aMorph