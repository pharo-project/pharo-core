isMouseEventInsideRightResizingZone: evt
	|resizingRectangle top left|
	
	top := self bounds top.
	left := self bounds right - resizingZoneWidth.
	
	resizingRectangle := left@top corner: self bounds corner.
	
	^ resizingRectangle containsPoint: evt position.
	
	