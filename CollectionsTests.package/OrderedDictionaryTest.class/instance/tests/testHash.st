testHash
	self assert: self emptyDictionary hash = self emptyDictionary hash.
	self assert:
		self dictionaryWithSingleAssociation hash =
			self dictionaryWithSingleAssociation hash.
	self assert:
		self dictionaryWithAssociations hash =
			self dictionaryWithAssociations hash.
	self assert:
		self dictionaryWithAssociations hash =
			(self dictionaryClass newFrom: self dictionaryAssociations reversed) hash.

	self
		deny: self emptyDictionary hash = self dictionaryWithSingleAssociation hash;
		deny: self emptyDictionary hash = self dictionaryWithAssociations hash;
		deny: self dictionaryWithSingleAssociation hash = self dictionaryWithAssociations hash.