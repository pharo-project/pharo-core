scrollUp: anInteger
	|delta|
	delta := anInteger.
	((self getIndex: self band firstSubbrick) = 1) ifTrue: [
		delta := self band firstSubbrick brickBounds top - self band brickBounds origin y ].
	
	self band brickBounds: (self band brickBounds translateBy: (0@ delta))