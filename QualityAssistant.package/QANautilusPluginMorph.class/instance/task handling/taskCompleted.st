taskCompleted

	listMorph
	updateList;
	deselectAll.
		
	self removeMorph: progressMorph.
	self addMorphFront: listMorph 