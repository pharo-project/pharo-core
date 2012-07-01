tests
testCreateDirectoryExists
	| path |
	path := Path * 'griffle'.
	self delete: path.
	filesystem createDirectory: path.
	self 
		should: [filesystem createDirectory: path]
		raise: DirectoryExists.
		

	
	
