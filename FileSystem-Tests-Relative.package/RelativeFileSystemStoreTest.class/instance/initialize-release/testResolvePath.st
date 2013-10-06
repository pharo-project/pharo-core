testResolvePath
	self assert: (store resolvePath: Path root) equals: originalReference path.
	self assert: (store resolvePath: RelativePath new) equals: originalReference path.
	
	self assert: (store resolvePath: Path * #baz ) equals: originalReference path / #baz.
	self assert: (store resolvePath: Path / #baz ) equals: originalReference path / #baz.