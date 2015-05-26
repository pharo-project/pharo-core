classes
	^ self classNames select: [ :tmpName | Smalltalk globals hasClassNamed: tmpName ] thenCollect: [ :tmpName | Smalltalk globals at: tmpName ]