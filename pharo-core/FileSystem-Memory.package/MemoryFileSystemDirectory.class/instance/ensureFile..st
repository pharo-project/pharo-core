creation
ensureFile: aFileName
	^ self at: aFileName put: (MemoryFileSystemFile named: aFileName)