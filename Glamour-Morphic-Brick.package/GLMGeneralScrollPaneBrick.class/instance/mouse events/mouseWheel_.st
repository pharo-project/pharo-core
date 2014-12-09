mouseWheel: event
	|velocity|
	
	velocity := self calculateVelocity: event.
	
	event direction = #up
		ifTrue: [ self scrollUp: velocity ].
		
	event direction = #down
		ifTrue: [ self scrollDown: velocity ].
	
	scrollPosition := band brickBounds top.
	
	self update.
	self changed