spotterPreviewArrowContainerStyleFor: aBrick

	aBrick layout: GLMBrickVerticalScrollListLayout new;
		margin: {
			self headerHeight + self innerBorderWidth + self previewBorderWidth.
			0.
			self previewBorderWidth.
			self previewArrowGapHack negated }.
		
	aBrick layout
		staticWidth: self previewArrowWidth - self previewArrowGapHack;
		zIndex: 4.