hasTestSelectors

	^(self selectors anySatisfy: [ :each | 
		(each beginsWith: 'test') and: [
				each numArgs isZero 
			]
		]) 		
		ifTrue: [ true ]
		ifFalse: [ 
			self shouldInheritSelectors and: [ 
				(self ~~ self lookupHierarchyRoot) and: [ 
					self superclass hasTestSelectors	
				]
			]
		]
	