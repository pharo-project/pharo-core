restoreMorphicDisplay
"overwritten for using its own display dimension"
	DisplayScreen startUp.

	self
		extent: self display extent;
		viewBox: self display boundingBox;
		handsDo: [:h | h visible: true; showTemporaryCursor: nil];
		resizeBackgroundMorph;
		restoreMainDockingBarDisplay;
		fullRepaintNeeded.
		
	self defer: [Cursor normal show].
		
	self layoutChanged.
