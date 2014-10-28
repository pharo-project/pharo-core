checkMethod: aMethod 
	vars := aMethod methodClass instVarNames.
	(matcher 
		executeTree: aMethod ast
		initialAnswer: false) ifTrue: 
		[ result 
			addMethod: aMethod;
		 	addSearchString: varName ]