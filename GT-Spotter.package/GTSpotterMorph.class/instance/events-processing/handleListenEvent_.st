handleListenEvent: anEvent
		
	anEvent type = #mouseDown ifTrue: [ 
		((self fullBoundsInWorld containsPoint: anEvent position) not and: [ self autoHide ])
			ifTrue: [ self spotterModel exit ] ]