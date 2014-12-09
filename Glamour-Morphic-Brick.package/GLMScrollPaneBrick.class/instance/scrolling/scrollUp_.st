scrollUp: anInteger

	"preventing from scrolling if already at the top"
	band brickBounds origin y >= 0 ifTrue: [ ^ self ].
	"actuall scrolling"
	band brickBounds: (band brickBounds translateBy: (0@ anInteger)).
	"returning scrollpane back if went away"
	band brickBounds origin y > 0 ifTrue: [ band brickBounds: (band brickBounds translateBy: (0@ band brickBounds origin y) negated) ]