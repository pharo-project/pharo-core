authorAlias 

	^self 
		annotationNamed: self class authorAliasKey
		ifAbsentPut: [ self class parseAuthorAliasFrom: self stamp ]