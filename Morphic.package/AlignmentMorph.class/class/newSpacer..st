instance creation
newSpacer: aColor
	"Answer a space-filling instance of me of the given color."

	^ self new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0;
		borderWidth: 0;
		extent: 1@1;
		color: aColor.
