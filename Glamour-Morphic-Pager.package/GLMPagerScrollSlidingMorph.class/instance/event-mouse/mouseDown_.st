mouseDown: evt

	startDragX := (evt position x - self left).
	startResizingWidth := self width.
	
	isRightResizing := self isMouseEventInsideRightResizingZone: evt.
	
	"only one type of resizing is possible"
	isRightResizing ifFalse: [ 
		isLeftResizing := self isMouseEventInsideLeftResizingZone: evt.
	]
	ifTrue: [ isLeftResizing := false ].

	isResizing := (isLeftResizing or: isRightResizing).
		
	super mouseDown: evt.