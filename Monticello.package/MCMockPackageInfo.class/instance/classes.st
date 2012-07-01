as yet unclassified
classes
	^ self classNames select: [ :name | Smalltalk globals hasClassNamed: name ] thenCollect: [ :name | Smalltalk globals at: name ]