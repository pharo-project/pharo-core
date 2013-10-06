fillRectangle: aRect on: anAthensCanvas
	"This is a terminal method in rendering dispatch scheme
	canvas->shape->paint. See AthensCanvas>>fillShape: "

	anAthensCanvas
		rectangleX: aRect left
		y: aRect top
		width: aRect width
		height: aRect height.
	
	self setMatrix: anAthensCanvas paintTransform inverted.
	self loadOn: anAthensCanvas .
	self fillOn: anAthensCanvas.	
