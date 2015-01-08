brickBounds: aRectangle
	"if you want to change brick's position or bounds use only this method!"
	
	brickBounds extent == aRectangle extent ifFalse: [ session := nil ].
	
	brickBounds := aRectangle.
	
	bounds := self bounds.
	fullBounds := bounds.