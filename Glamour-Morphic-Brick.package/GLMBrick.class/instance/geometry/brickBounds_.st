brickBounds: aRectangle
	"if you want to change brick's position or bounds use only this method!"
	
	brickBounds := (aRectangle origin + ((self layoutProperties paddingLeft) @ (self layoutProperties paddingTop)))
		corner: (aRectangle corner - ((self layoutProperties paddingRight) @ (self layoutProperties paddingBottom))).
	
	bounds := self bounds.
	fullBounds := bounds