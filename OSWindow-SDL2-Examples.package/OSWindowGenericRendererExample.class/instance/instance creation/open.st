open
	| attrs |
	attrs := OSWindowAttributes new.
	attrs
		extent: self defaultExtent;
		resizable: false;
		windowCentered: true.
		
	window := OSWindow createWithAttributes: attrs.
	
	renderer := window newGenericRenderer.
	self initializeWithRenderer.
	
	window eventHandler: (self createEventHandler).
	
	drawingProcess := self createDrawingProcess.
