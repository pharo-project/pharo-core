tests
testEnsureDirectoryExists
	| path |
	path := Path * 'plonk'.
	self delete: path.
	filesystem createDirectory: path.
	self 
		shouldnt: [filesystem ensureDirectory: path]
		raise: FileSystemError.
	