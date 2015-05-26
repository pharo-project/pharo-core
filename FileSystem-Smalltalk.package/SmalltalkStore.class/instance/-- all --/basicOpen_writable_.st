basicOpen: path writable: aBoolean
	^ self
		nodeAt: path
		ifPresent: [ :aMemoryFileSystemEntry | 
				self flag: 'TODO: wonderful code here'.
				aMemoryFileSystemEntry isCompiledMethod 
					ifTrue: [aMemoryFileSystemEntry sourceCode asByteArray ]
					ifFalse: [ aMemoryFileSystemEntry asByteArray ]]
		ifAbsent: [ 
			aBoolean
				ifFalse: [ self signalFileDoesNotExist: path ]
				ifTrue: [ self createFile: path ] ]