on: aMorph

	morph := aMorph.
	morph layoutProperties: (GLMBrickLayoutProperties new).
	morph layoutProperties horizontalPercent: 100.
	morph layoutProperties verticalPercent: 100.
	self addBrickBack: morph.
	super brickBounds: (0@0 extent: (morph width@morph height)).