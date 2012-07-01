file operations
copyFile: fileStream1 toFile: fileStream2
	| buffer |
	buffer := String new: 50000.
	[fileStream1 atEnd] whileFalse:
		[fileStream2 nextPutAll: (fileStream1 nextInto: buffer)].
