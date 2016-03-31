updateList

	self class wasOpenedBefore ifFalse: [ ^ self ].
	
	self removeAllMorphs.
	self addMorphFront: progressMorph.
	self excecuteTask