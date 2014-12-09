scrollUp: anInteger

	((self getIndex: self band firstSubbrick) = 1) ifTrue: [
		(self band brickBounds origin y >= self band firstSubbrick brickBounds top) ifTrue: [ ^ self ] ].
	
	self band brickBounds: (self band brickBounds translateBy: (0@ anInteger))