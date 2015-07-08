testCanCreateFiletreeRepositoryFromUrl
	repository := MCRepository fromUrl: 'filetree:///tmp'.
	self assert: (repository isKindOf: MCFileTreeRepository) 