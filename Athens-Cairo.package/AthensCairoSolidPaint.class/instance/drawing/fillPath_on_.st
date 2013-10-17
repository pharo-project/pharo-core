fillPath: path on: anAthensCanvas 
	self loadOn: anAthensCanvas.
	anAthensCanvas
		newPath;
		loadPath: path.
		
	self fillOn: anAthensCanvas