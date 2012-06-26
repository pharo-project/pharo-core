source code management
sourceFileStreamIfAbsent: aBlock
	^ self sourceFileStream ifNil: aBlock