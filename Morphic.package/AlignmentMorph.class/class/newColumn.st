instance creation
newColumn

	^ self new
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		extent: 1@1;
		vResizing: #spaceFill
