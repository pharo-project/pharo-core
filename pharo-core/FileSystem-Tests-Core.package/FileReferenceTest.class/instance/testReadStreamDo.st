tests
testReadStreamDo
	| ref path s |
	path := Path * 'plonk'.
	filesystem store createFile: path.
	ref := filesystem referenceTo: path.
	ref
		readStreamDo: [ :stream | 
			self assert: stream class = FileSystemReadStream.
			self assert: stream isOpen.
			s := stream ].
	self deny: s isOpen