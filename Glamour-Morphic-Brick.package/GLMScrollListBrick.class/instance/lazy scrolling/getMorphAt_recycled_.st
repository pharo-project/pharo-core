getMorphAt: anInteger recycled: aMorph
	|newMorph|
	
	newMorph := (self adaptor morphAt: anInteger convert: aMorph) asBrick.
	newMorph hSpaceFill.
	self setIndex: anInteger in: newMorph.
	^ newMorph