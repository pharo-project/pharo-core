handleListenEvent: anEvent
	
	anEvent type = #mouseDown ifTrue: [ 
		(self fullBoundsInWorld containsPoint: anEvent position) not
			ifTrue: [ self delete ] ]