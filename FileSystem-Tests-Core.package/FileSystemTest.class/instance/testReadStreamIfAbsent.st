tests-references
testReadStreamIfAbsent
	| reference stream |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	self assert: (reference readStreamIfAbsent: [ true ]).
	reference writeStreamDo: [ :ws | ws nextPutAll: 'griffle' ].
	stream := reference readStreamIfAbsent: [ false ].
	self assert: stream contents asString = 'griffle'.
	stream close