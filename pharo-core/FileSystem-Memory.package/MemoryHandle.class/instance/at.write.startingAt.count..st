public
at: first write: aCollection startingAt: start count: count 
	| last |
	writable ifFalse: [ self primitiveFailed ].
	last := first + count - 1.
	last > bytes size ifTrue: [self growTo: last].
	bytes 
		replaceFrom: first
		to: last
		with: aCollection
		startingAt: start.
	size := last