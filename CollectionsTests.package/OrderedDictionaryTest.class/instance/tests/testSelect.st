testSelect
	self
		assertIsDictionary:
			(self dictionaryWithAssociations select: [:each | each ~= self singleValue])
		withAssociations:
			(self dictionaryAssociations copyWithout: self singleAssociation)