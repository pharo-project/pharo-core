checkMethod: aMethod 
	(aMethod parseTree isPrimitive not and: 
		[ matcher 
			executeMethod: aMethod parseTree
			initialAnswer: false ]) ifTrue: 
		[ result addMethod: aMethod ]