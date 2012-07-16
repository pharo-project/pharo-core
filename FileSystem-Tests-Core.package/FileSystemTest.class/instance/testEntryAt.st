tests
testEntryAt
	| path now entry then |
	then := DateAndTime now - 1 asSeconds.
	path := Path * 'plonk'.
	filesystem createDirectory: path.
	self delete: path.
	entry := filesystem entryAt: path.
	now := (DateAndTime now + 1 asSeconds).
	
	self assert: entry isDirectory.
	self assert: entry reference = (filesystem referenceTo: path) asAbsolute.
	
	self assert: entry creationTime >= then.
	self assert: entry creationTime <= now.
	
	self assert: entry modificationTime >= then.
	self assert: entry modificationTime <= now.