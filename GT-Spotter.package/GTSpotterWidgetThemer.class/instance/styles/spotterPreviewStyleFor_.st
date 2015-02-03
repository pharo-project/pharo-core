spotterPreviewStyleFor: aBrick
	
	aBrick
		borderColor: self borderColor;
		borderWidth: self previewBorderWidth;
		color: self backgroundColor.
	
	aBrick layout
		hPercent: self previewWidthPercent;
		margin: { self headerHeight + self innerBorderWidth. 0 . 0};
		marginLeft: (self previewBorderWidth + self previewArrowWidth) negated;
		zIndex: 1