mouse events
handleMouseUp: anEvent 
	(container commandOrCrontrolKeyPressed: anEvent) 
		ifTrue: [^ container listManager mouseUp: anEvent on: self].
	^ super handleMouseUp: anEvent