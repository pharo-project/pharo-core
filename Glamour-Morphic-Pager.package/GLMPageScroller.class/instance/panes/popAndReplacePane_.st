popAndReplacePane: aMorph	
	transform removeMorph: transform lastSubmorph. "one for the separator"
	transform submorphs isEmpty
		ifFalse: [ transform removeMorph: transform lastSubmorph ].
	"remove from collection"
	panes removeLast.
	paneCount := paneCount - 1.	
	
	aMorph 
		borderWidth: 0;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0.
	transform hasSubmorphs 
		ifTrue: [ transform addMorphBack: self separator ].
	transform addMorphBack: (aMorph adoptPaneColor: self paneColor).
	"adding morph to collection"
	panes addLast: aMorph.
	paneCount := paneCount + 1.
	self updatePanes