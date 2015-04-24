testHash
	| dictionary |

	dictionary := self emptyDictionary.
	self assert: dictionary hash = self emptyDictionary hash.
	self emptyInternalDictionary hash =
		self internalDictionaryWithSingleAssociation hash
		ifFalse: [
			self deny:
				dictionary hash = self dictionaryWithSingleAssociation hash].
	self emptyInternalDictionary hash = self internalDictionaryWithAssociations hash
		ifFalse: [self deny: dictionary hash = self dictionaryWithAssociations hash].

	dictionary := self dictionaryWithSingleAssociation.
	self assert: dictionary hash = self dictionaryWithSingleAssociation hash.
	(self internalDictionaryWithSingleAssociation hash =
		self internalDictionaryWithAssociations hash)
		ifFalse: [self deny: dictionary hash = self dictionaryWithAssociations hash].

	dictionary := self dictionaryWithAssociations.
	self assert: dictionary hash = self dictionaryWithAssociations hash.