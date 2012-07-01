windows
driveNamed: driveName
	^ self fileSystem: (FileSystem disk) path: Path / (driveName, ':')