scrollTo: aBrick
	|delta|
	"if already visible no need to scroll"
		
	(self isVisible: aBrick) ifTrue: [ ^ self ].
	
	delta := ((self allowedBounds top - band globalBounds top) - (aBrick globalBounds top - band globalBounds top)).
	delta < 0 ifTrue: [ delta := delta + self allowedBounds height - aBrick height ].
		
	band brickBounds: (band brickBounds translateBy: (0@ delta)).
	band brickBounds corner y < self height
		ifTrue: [ band brickBounds: (band brickBounds translateBy: (0@ (self height - band brickBounds corner y))) ].
		
	(band brickBounds origin y > 0)
		ifTrue: [ band brickBounds: (band brickBounds translateBy: (0@ band brickBounds origin y) negated) ].
	
	scrollPosition := band brickBounds top.
	
	self update.
	self changed.
	
	