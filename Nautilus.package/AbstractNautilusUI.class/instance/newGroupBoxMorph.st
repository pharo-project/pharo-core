displaying
newGroupBoxMorph
	| morph |
 	morph := GroupboxMorph new.
	morph contentMorph
		layoutInset: (0@0 corner: 0@0);
		cellInset: 0.
	^ morph