link: aMetaLink
	(self propertyAt: #links ifAbsentPut: [ IdentitySet new ]) add: aMetaLink.
	aMetaLink installOn: self.
	self methodNode compiledMethod installLink. 