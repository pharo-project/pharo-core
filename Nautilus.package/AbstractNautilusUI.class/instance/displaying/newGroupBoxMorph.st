newGroupBoxMorph
	| morph |
 	morph := GroupboxMorph new.
	morph contentMorph
		layoutInset: (Margin left: 0 top: 0 right:  0 bottom: 0);
		cellInset: 0.
	^ morph