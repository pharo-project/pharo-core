mouseUp: evt
	super mouseUp: evt.
	
	pagerModel recomputeState: (isResizing not).
	
	isResizing
		ifTrue: [
			self setWidthAfterResizing.
		].
	
	isResizing := false.
		
	(bounds containsPoint: evt position)
		ifFalse: [ self setCursorToNormal: evt ]
		ifTrue: [ self setCursorToResizing: evt ] 