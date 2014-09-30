isMouseEventInsideLeftResizingZone: evt
	|resizingRectangle bottom right|
	
	bottom := self bounds bottom.
	right := self bounds left + resizingZoneWidth.
	
	resizingRectangle := self bounds origin corner: right@bottom.
	
	^ resizingRectangle containsPoint: evt position.
	
	