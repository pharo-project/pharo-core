checkMethod: aMethod 
	vars := aMethod methodClass instVarNames.
	(matcher 
		executeTree: aMethod parseTree
		initialAnswer: false) ifTrue: 
		[ result 
			addMethod: aMethod;
		 	addSearchString: varName ]