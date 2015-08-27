open
	| attrs |
	attrs := OSWindowAttributes new.
	attrs preferableDriver: OSSDL2MultiTouchDriver new;
		extent: self defaultExtent;
		resizable: false;
		position: 100@100.
		
	window := OSWindow createWithAttributes: attrs.
	
	renderer := window newAthensRenderer.

	self initializeFromSurface.

	window eventHandler: (self createEventHandler).
	attrs preferableDriver registerGlobalListener: window eventHandler.
	
	drawingProcess := self createDrawingProcess