fillPath: path on: anAthensCanvas 

	anAthensCanvas
		newPath;
		loadPath: path.
	self setMatrix: anAthensCanvas paintTransform inverted.
	self loadOn: anAthensCanvas.
	self fillOn: anAthensCanvas