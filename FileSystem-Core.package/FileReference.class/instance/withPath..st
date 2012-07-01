navigating
withPath: newPath
	^ self path == newPath
		ifTrue: [self]
		ifFalse: [filesystem referenceTo: newPath]