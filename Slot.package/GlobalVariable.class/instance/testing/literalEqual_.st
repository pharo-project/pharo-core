literalEqual: aLiteral
	^(super literalEqual: aLiteral) or: [ 
		key ~= value class theNonMetaClass name and: [ 
			key = aLiteral
		]
	]