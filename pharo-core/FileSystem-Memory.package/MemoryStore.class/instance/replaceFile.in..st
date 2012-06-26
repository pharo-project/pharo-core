private
replaceFile: path in: aBlock
	^ self
		nodeAt: path parent
		ifPresent: [ :dict | 
			| old new |
			(self basicIsDirectory: dict)
				ifFalse: [ self signalFileDoesNotExist: path ].
			old := dict at: path basename ifAbsent: [ self signalFileDoesNotExist: path ].
			new := aBlock value: old.
			dict at: path basename put: new ]
		ifAbsent: [ self signalFileDoesNotExist: path ]