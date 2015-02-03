addItemMorph: aMorph before: anotherMorph

	self setBoundsOf: aMorph before: anotherMorph.
	self addBrick: aMorph before: anotherMorph.
	(self isPartiallyVisible: aMorph) ifFalse: [ self removeBrick: aMorph. ^ nil ].
	
	aMorph brickBounds top < 0
		ifTrue: [ self moveAllSubbricksBy: aMorph brickBounds top negated ]
		ifFalse: [ (self getIndex: aMorph) = 1 ifTrue: [
				self moveAllSubbricksBy: aMorph brickBounds top negated ] ].
	
	^ aMorph