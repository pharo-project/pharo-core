testCanCreateFiletreeRepositoryFromUrl
	| dir |
	[ 
	dir := 'tmp' asFileReference ensureCreateDirectory.
	repository := MCRepository fromUrl: 'filetree://tmp'.
	self assert: (repository isKindOf: MCFileTreeRepository) ]
		ensure: [ dir delete ]