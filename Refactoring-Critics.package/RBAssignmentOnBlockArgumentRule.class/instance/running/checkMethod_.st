checkMethod: aContext
	(RBFindBlockArgumentAssignment collectAssignments: aContext compiledMethod parseTree)
		do: [ :item | 
			result addClass: aContext selectedClass selector: aContext selector.
			result addSearchString: item ]