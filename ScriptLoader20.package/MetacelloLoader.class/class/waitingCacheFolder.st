private
waitingCacheFolder
	^ self packageToBeTestedFolderName asFileReference
		ensureDirectory;
		yourself

	