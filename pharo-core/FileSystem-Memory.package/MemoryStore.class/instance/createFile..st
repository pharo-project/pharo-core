private
createFile: aPath
	^ self
		nodeAt: aPath parent
		ifPresent: [ :dict | 
			(self basicIsDirectory: dict)
				ifTrue: [ dict at: aPath basename put: ByteArray new ] ]
		ifAbsent: [ self signalDirectoryDoesNotExist: aPath parent ]