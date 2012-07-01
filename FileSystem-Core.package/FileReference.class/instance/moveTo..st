operations
moveTo: aReference
	
	| result |
	result := self fileSystem rename: self path to: aReference path.
	result ifNotNil: [
		self setFileSystem: filesystem path: aReference path ].		