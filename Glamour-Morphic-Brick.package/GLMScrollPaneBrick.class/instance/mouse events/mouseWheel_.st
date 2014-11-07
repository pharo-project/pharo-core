mouseWheel: event
	|velocity|
	super mouseWheel: event.
	
	velocity := self calculateVelocity: event.
	
	event direction = #up ifTrue: [
			"preventing from scrolling if already at the top"
			band brickBounds origin y >= 0 ifTrue: [ ^ self ].
			"actuall scrolling"
			band brickBounds: (band brickBounds translateBy: (0@ currentVelocity)).
			"returning scrollpane back if went away"
			band brickBounds origin y > 0 ifTrue: [ band brickBounds: (band brickBounds translateBy: (0@ band brickBounds origin y) negated) ] ].
		
	event direction = #down ifTrue: [
			band brickBounds corner y <= self height ifTrue: [ ^ self ].
			band brickBounds: (band brickBounds translateBy: (0@ currentVelocity) negated).
			band brickBounds corner y < self height ifTrue: [ band brickBounds: (band brickBounds translateBy: (0@ (self height - band brickBounds corner y))) ] ].
		
	self changed.