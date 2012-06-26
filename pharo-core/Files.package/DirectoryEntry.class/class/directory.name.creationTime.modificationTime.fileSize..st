instance creation
directory: aFileDirectoryOrServerDirectory name: name0 creationTime: creationTime modificationTime: modificationTime fileSize: fileSize 
	^ self new 
		setDirectory: aFileDirectoryOrServerDirectory
		name: name0
		creationTime: creationTime
		modificationTime: modificationTime
		fileSize: fileSize