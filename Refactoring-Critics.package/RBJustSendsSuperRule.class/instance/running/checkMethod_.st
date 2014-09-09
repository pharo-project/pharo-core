checkMethod: aContext 
	(aContext compiledMethod parseTree isPrimitive not and: 
		[ matcher 
			executeMethod: aContext compiledMethod parseTree
			initialAnswer: false ]) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]