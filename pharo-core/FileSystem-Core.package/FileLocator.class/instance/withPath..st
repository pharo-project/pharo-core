navigating
withPath: newPath
	^ path == newPath
		ifTrue: [self]
		ifFalse: [self class origin: origin path: newPath]