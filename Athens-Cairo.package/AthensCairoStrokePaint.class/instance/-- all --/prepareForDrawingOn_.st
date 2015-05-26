prepareForDrawingOn: aCanvas
	
	fillPaint 
		loadOnCairoCanvas: aCanvas.
	
	self 
		primSetLineWidthOn: aCanvas;
		primSetLineJoinOn: aCanvas;
		primSetLineCapOn: aCanvas.
	
	dashLenghts 
		ifNil: [ aCanvas resetDash ] 
		ifNotNil: [ self setDashesOn: aCanvas ].