checkMethod: aMethod 
	(RBReadBeforeWrittenTester variablesReadBeforeWrittenIn: aMethod parseTree) do: 
		[ :each | 
		result 
			addMethod: aMethod;
			addSearchString: each ]