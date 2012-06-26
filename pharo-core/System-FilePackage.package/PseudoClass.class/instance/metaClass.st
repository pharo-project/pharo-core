class
metaClass
	^metaClass ifNil:[metaClass := PseudoMetaclass new name: (self name)].