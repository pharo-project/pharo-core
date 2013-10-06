fillRectangle: aRect on: anAthensCanvas
	"This is a terminal method in rendering dispatch scheme
	canvas->shape->paint. See AthensCanvas>>fillShape: "
	self loadOn: anAthensCanvas.
	anAthensCanvas 
		newPath;
		rectangleX: aRect left y: aRect top width: aRect width height: aRect height .
	self fillOn: anAthensCanvas