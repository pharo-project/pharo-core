instance creation
fieldName: fieldName fileNamed: fileName
	| file mimeType entry size fileStream entity |
	file := fileName asFileReference.
	mimeType := ZnMimeType forFilenameExtension: (file extension).
	fileStream := file readStream.
	mimeType isBinary ifTrue: [ fileStream binary ].
	entry := file entry.
	size := entry size.
	(entity := ZnStreamingEntity type: mimeType length: size)
		stream: fileStream.
	^ self fieldName: fieldName fileName: entry basename entity: entity
	