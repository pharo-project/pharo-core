instance creation
newRow

	^ self new
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		extent: 1@1;
		borderWidth: 0
