private
waitingCacheFolder
	^ self packageToBeTestedFolderName asDirectory
		ensureDirectory;
		yourself

	