tests
testEnsureDirectory
	| path |
	path := Path * 'plonk'.
	self delete: path.
	filesystem ensureDirectory: path.
	self assert: (filesystem isDirectory: path).