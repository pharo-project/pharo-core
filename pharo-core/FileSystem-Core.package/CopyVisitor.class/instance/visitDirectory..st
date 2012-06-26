visiting
visitDirectory: anEntry
	| reference |
	reference := anEntry reference.
	reference = source
		ifTrue: [dest ensureDirectory]
		ifFalse: [self copyDirectory: reference]