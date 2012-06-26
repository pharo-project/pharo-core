tests
testReadStream
	| ref stream path |
	path := Path * 'plonk'.
	filesystem store createFile: path.
	ref := filesystem referenceTo: path.
	[stream := ref readStream.
	self assert: stream class = FileSystemReadStream ] 
		ensure: [ stream ifNotNil: [ stream close ] ]