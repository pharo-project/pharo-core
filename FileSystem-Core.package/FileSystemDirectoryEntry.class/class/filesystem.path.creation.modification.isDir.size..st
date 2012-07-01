instance creation
filesystem: aFilesystem path: aPath creation: cTime modification: mTime isDir: aBoolean size: anInteger
	"Create a directory entry given a filesystem and a path in such filesystem. In addition, the creation and modification time are required as well as a boolean that indicates whether the entry is a folder or a file and its size."

	self deprecated: 'Use #fileSystem:path:creation:modification:isDir:size:' on: '3 April 2012' in: 'Pharo 1.4'.

	^ self 
		fileSystem: aFilesystem 
		path: aPath 
		creation: cTime 
		modification: mTime 
		isDir: aBoolean 
		size: anInteger
