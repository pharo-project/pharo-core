checkMethod: aContext 
	
	Undeclared associations
		detect: [ :each |
			aContext compiledMethod refersToLiteral: each ]
		ifFound: [ :each | 
			result addSearchString: each key.
			result 
				addClass: aContext selectedClass
				selector: aContext selector ]