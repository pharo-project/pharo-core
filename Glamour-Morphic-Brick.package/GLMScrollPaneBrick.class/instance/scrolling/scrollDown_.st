scrollDown: anInteger
	
	band brickBounds corner y <= self height ifTrue: [ ^ self ].
	band brickBounds: (band brickBounds translateBy: (0@ anInteger) negated).
	band brickBounds corner y < self height ifTrue: [ band brickBounds: (band brickBounds translateBy: (0@ (self height - band brickBounds corner y))) ]