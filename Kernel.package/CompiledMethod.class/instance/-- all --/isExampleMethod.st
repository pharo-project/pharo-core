isExampleMethod
	
    ^ (self methodClass isMeta) and: [ 
		(self selector beginsWith: 'example')
			 and: [ self numArgs isZero ] ]