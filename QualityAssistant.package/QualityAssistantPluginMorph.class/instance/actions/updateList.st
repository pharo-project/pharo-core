updateList

	self removeMorph: listMorph.
	self addMorphFront: progressMorph.
	updateTask execute
