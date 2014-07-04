testCollect
	self
		assertIsDictionary:
			(self dictionaryWithAssociations collect: [:each | self newValue])
		withAssociations:
			(self dictionaryAssociations collect: [:each | each value: self newValue])