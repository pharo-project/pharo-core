actions
newDiffMorph
	"Answer a new morph for the source difference."

	^self diffMorphClass new
		borderStyle: (BorderStyle inset width: 1);
		font: self theme statusFont;
		addDependent: self;
		yourself