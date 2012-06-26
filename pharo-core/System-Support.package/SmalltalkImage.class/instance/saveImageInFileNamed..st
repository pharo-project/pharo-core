saving
saveImageInFileNamed: aString
	| imageFile previousFullImageName |
	
	imageFile := aString  asFileReference.
	imageFile parent ensureDirectory.
	previousFullImageName := self imagePath.
	
	^self
		changeImagePathTo: imageFile fullName;
		closeSourceFiles;
		openSourceFiles;  "so SNAPSHOT appears in new changes file"
		snapshot: true andQuit: false