scrollTarget: aMorph
	"Set the morph that is scrolled."
	
	self scroller
		removeAllMorphs;
		offset: 0@0;
		addMorph: aMorph.
	aMorph position: self scroller topLeft negated.
	self checkButtonAvailability