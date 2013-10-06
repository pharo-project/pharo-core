fillPath: aPath on: anAthensCanvas
	self loadOn: anAthensCanvas.
	anAthensCanvas newPath; loadPath: aPath.
	self strokeOn: anAthensCanvas.
	