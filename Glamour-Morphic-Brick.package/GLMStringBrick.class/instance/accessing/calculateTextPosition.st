calculateTextPosition

	self textPosition = #leftCenter ifTrue: [ 
		^ (self brickBounds origin + self textPositionVerticalCenter) floor.
	].

	self textPosition = #center ifTrue: [ 
		^ (self brickBounds origin + self textPositionVerticalCenter + self textPositionHorizontalCenter)floor.
	].

	self textPosition = #leftTop ifTrue: [
		^ self brickBounds origin
	].

	^ self brickBounds origin