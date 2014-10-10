checkMethod: aMethod 
	((aMethod refersToLiteral: trueBinding) or: [ aMethod refersToLiteral: falseBinding ]) ifTrue: 
		[ result
			addMethod: aMethod;
			searchStrings: #('True' 'False' ) ]