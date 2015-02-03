exampleCollection

	GLMFoundationBrick new
		brickRoot: (self new adaptor: (GLMBrickListAdaptor new on: Smalltalk allClasses));
		extent: 300@400;
		openInWindow