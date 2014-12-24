handleListenEvent: anEvent
		
	anEvent type = #mouseDown ifTrue: [ 
		(self fullBoundsInWorld containsPoint: anEvent position) not
			ifTrue: [ self delete ] ].
		
	anEvent type = #keyDown ifTrue: [
		anEvent keyValue = 56 ifTrue: [ self shiftPressed ]	]