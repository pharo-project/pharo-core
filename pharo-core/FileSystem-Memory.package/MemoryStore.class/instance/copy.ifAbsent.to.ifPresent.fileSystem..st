private
copy: sourcePath ifAbsent: absentBlock to: destinationPath ifPresent: presentBlock fileSystem: aFilesystem
	self
		nodeAt: sourcePath
		ifPresent: [ :bytes | 
			(self basicIsDirectory: bytes)
				ifTrue: [ ^ absentBlock value ].
			self
				nodeAt: destinationPath parent
				ifPresent: [ :dict | 
					(self basicIsFile: dict)
						ifTrue: [ self signalDirectoryDoesNotExist: destinationPath parent ].
					(dict includesKey: destinationPath basename)
						ifTrue: [ "cannot overwrite existing file"^ presentBlock value ].
					dict at: destinationPath basename put: bytes copy ]
				ifAbsent: [ self signalDirectoryDoesNotExist: destinationPath parent ] ]
		ifAbsent: absentBlock