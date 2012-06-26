tests-references
testWriteStreamIfPresent
	| reference stream |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	stream := reference writeStreamIfPresent: [ false ].
	stream nextPutAll: 'griffle'.
	stream close.
	self assert: (filesystem workingDirectory / 'griffle') isFile.
	self assert: (reference writeStreamIfPresent: [ true ])