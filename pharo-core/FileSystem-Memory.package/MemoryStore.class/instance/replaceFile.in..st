private
replaceFile: path in: aBlock
	^ self
		nodeAt: path parent
		ifPresent: [ :entry | | old new |
			entry isDirectory
				ifFalse: [ self signalFileDoesNotExist: path ].
			old := entry at: path basename ifAbsent: [ self signalFileDoesNotExist: path ].
			new := aBlock value: old.
			entry at: path basename put: new ]
		ifAbsent: [ self signalFileDoesNotExist: path ]