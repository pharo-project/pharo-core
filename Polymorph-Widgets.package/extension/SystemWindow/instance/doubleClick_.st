doubleClick: event
	"Handle a double click. Maximize/restore the window.
	Works in title bar area."
	
	(labelArea containsPoint: event position)
		ifTrue: [self expandBoxHit]