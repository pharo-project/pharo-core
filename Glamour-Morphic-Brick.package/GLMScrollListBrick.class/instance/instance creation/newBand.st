newBand
	^ super newBand heightBlock: [ :bandBrick |
		bandBrick subbricks isEmpty
		ifTrue: [ 0 ]
		ifFalse: [ bandBrick lastSubbrick brickBounds bottom ] ].