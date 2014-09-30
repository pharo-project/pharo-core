pushPane: aMorph	
	aMorph 
		borderWidth: 1;
		borderColor: Color transparent;
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