athensFillRectangle: aRect on: aCanvas
	"This is a terminal method in rendering dispatch scheme
	canvas->shape->paint. See AthensCanvas>>fillShape: "
	
	aCanvas
		setSourceR: r g: g b: b a: a; 
		newPath;
		rectangleX: aRect left y: aRect top width: aRect width height: aRect height;
		fill.