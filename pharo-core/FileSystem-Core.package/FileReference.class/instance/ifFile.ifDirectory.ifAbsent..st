testing
ifFile: fBlock ifDirectory: dBlock ifAbsent: aBlock
	^ self isFile
		ifTrue: [ fBlock value ]
		ifFalse: [
			self isDirectory
				ifTrue: [ dBlock value ]
				ifFalse: [ aBlock value ] ]