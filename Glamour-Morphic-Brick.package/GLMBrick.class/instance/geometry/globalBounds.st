globalBounds
	"converts brickBounds to morhic bounds on fly"
	"if you want to implement something sophisticated that combines bricks and morphic this is right method to use"
	^ self brickOwner ifNotNil: [ self brickBounds translateBy: self brickOwner privateGlobalBoundsTranslateFactor ] ifNil: [ 0@0 extent: 20@20 ].