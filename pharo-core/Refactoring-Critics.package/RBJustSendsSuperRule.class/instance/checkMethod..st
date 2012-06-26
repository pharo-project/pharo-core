running
checkMethod: aContext 
	(aContext parseTree isPrimitive not and: 
		[ matcher 
			executeMethod: aContext parseTree
			initialAnswer: false ]) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]