calculateTextPosition

	self textPosition = #leftCenter ifTrue: [ 
		^ self textPositionVerticalCenter
	].

	self textPosition = #center ifTrue: [ 
		^ (self textPositionVerticalCenter + self textPositionHorizontalCenter)
	].

	self textPosition = #leftTop ifTrue: [
		^ 0@0
	].

	self textPosition = #rightCenter ifTrue: [
		^ ((self brickBounds width@0 + self textPositionVerticalCenter - (self textSize x@0)) max: 0@0)
	].

	^ 0@0