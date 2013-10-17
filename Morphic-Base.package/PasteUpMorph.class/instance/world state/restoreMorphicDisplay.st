restoreMorphicDisplay

	DisplayScreen startUp.

	ThumbnailMorph recursionReset.

	self
		extent: Display extent;
		viewBox: Display boundingBox;
		handsDo: [:h | h visible: true; showTemporaryCursor: nil];
		resizeBackgroundMorph;
		restoreMainDockingBarDisplay;
		fullRepaintNeeded.
		
	self defer: [Cursor normal show].
		
	self layoutChanged.
