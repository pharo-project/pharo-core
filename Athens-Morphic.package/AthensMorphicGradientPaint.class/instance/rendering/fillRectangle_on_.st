fillRectangle: aRect on: canvas
	"This is a terminal method in rendering dispatch scheme
	canvas->shape->paint. See AthensCanvas>>fillShape: "
	
	| fill |
	fill := gradient radial ifTrue: [
		canvas surface
			createRadialGradient: gradient colorRamp
			center:  (canvas pathTransform inverseTransform: gradient origin )
			radius: gradient direction y ]
	ifFalse: [
		canvas surface
			createLinearGradient: gradient colorRamp
			start: (canvas pathTransform inverseTransform: gradient origin)
			stop: (canvas pathTransform inverseTransform: gradient origin + gradient direction ) ].

	fill fillRectangle: aRect on: canvas.
