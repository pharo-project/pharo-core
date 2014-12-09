getMorphAt: anInteger recycled: aMorph
	|newMorph|
	
	newMorph := (self adaptor morphAt: anInteger convert: aMorph) asBrick.
	self setIndex: anInteger in: newMorph.
	^ newMorph