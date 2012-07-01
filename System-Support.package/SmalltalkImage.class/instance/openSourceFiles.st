sources, change log
openSourceFiles

	self imagePath = LastImagePath 
		ifFalse: ["Reset the author full name to blank when the image gets moved"
			LastImagePath := self imagePath.
			Author fullName: ''].
	self checkAndOpenSourcesAndChanges.
	SourceFileArray install