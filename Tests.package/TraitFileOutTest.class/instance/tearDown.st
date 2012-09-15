running
tearDown
	| dir |
	dir := FileSystem workingDirectory.
	self createdClassesAndTraits, self resourceClassesAndTraits  do: [:each |
		(dir / each asString,'st') ensureDeleted ] .
	(dir / self categoryName,'st') ensureDeleted.
	self class environment organization removeSystemCategory: self categoryName.
	super tearDown