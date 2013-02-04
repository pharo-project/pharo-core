saving
saveImageInFileNamed: aFile
	"Save the image in the given file.
	Unlike #backupImageInFileNamed: this method continues evaluation in the new image after saving.
	Note: This method does not save the .changes file, use #saveAs:"
	
	| imageFile previousFullImageName |
	
	imageFile := aFile  asFileReference.
	imageFile parent ensureDirectory.
	previousFullImageName := self imagePath.
	
	^self
		changeImagePathTo: imageFile fullName;
		closeSourceFiles;
		openSourceFiles;  "so SNAPSHOT appears in new changes file"
		snapshot: true andQuit: false