checkMethod: aMethod 
	
	Undeclared associations
		detect: [ :each |
			aMethod refersToLiteral: each ]
		ifFound: [ :each | 
			result
				addSearchString: each key;
				addMethod: aMethod ]