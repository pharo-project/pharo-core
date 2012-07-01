streaming
streamFrom: inputStream to: outputStream size: totalSize
	| bufferSize buffer leftToRead |
	bufferSize := 4096 min: totalSize.
	buffer := (inputStream isBinary ifTrue: [ ByteArray ] ifFalse: [ String ]) new: bufferSize.
	leftToRead := totalSize.
	[ leftToRead > 0 ]
		whileTrue: [ | readCount |
			readCount := bufferSize min: leftToRead.
			inputStream next: readCount into: buffer.
			leftToRead := leftToRead - readCount.
			outputStream next: readCount putAll: buffer startingAt: 1 ]