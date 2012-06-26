tests-references
testFileStreamDo
	| reference |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	self assert: (reference fileStreamDo: [ :stream |
		stream nextPutAll: 'griffle'.
		true ]).
	self assert: (filesystem workingDirectory / 'griffle') isFile.
	self assert: (reference fileStreamDo: [ :stream | true ])