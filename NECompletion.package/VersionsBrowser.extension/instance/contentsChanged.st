*necompletion-override
contentsChanged

	super contentsChanged.
	self showingAnyKindOfDiffs 
		ifTrue: [ 
			codePane removeAllMorphs.
			codePane addMorph: self buildDiffCodePane ]