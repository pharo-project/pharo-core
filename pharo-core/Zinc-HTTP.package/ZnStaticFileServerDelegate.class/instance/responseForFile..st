private
responseForFile: filename
	| entry size time mimeType file fileStream entity response |
	
	file := filename asFileReference.
	entry :=  file entry.
	size := entry size.
	time := entry modificationDateAndTime.
	mimeType := ZnMimeType forFilenameExtension: file extension.
	fileStream := file readStream.
	mimeType isBinary ifTrue: [ fileStream binary ].
	(entity := ZnStreamingEntity type: mimeType length: size)
		stream: fileStream.
	(response := ZnResponse ok: entity)
		headers at: 'Modification-Date' put: (ZnUtils httpDate: time).
	^ response 