mouseWheel: event
	
	self
		scrollBy: (self calculateVelocity: event)
		direction: (event isUp ifTrue: [ #up ] ifFalse: [ #down ])