tests
testWriteStreamDoExists
	| ref s path |
	path := Path * 'plonk'.
	filesystem store createFile: path.
	ref := filesystem referenceTo: path.
	ref
		writeStreamDo: [ :stream | 
			s := stream.
			self assert: stream class = FileSystemWriteStream.
			self assert: stream isOpen ].
	self deny: s isOpen