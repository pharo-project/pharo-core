tests
testChildrenAt
	| directory entries |
	directory := Path * 'plonk'.
	filesystem createDirectory: directory.
	filesystem createDirectory: directory / 'griffle'.
	filesystem createDirectory: directory / 'bint'.
	self delete: directory / 'griffle'.
	self delete: directory / 'bint'.
	self delete: directory.
	entries := filesystem childrenAt: directory.
	self assert: entries size = 2.
	entries do: 
		[ :ea | 
		self assert: (ea isKindOf: Path).
		self assert: ea parent = (filesystem resolve: directory).
		self assert: (#('griffle' 'bint' ) includes: ea basename) ]