checkMethod: aContext
	(RBFindBlockArgumentAssignment collectAssignments: aContext parseTree)
		do: [ :item | 
			result addClass: aContext selectedClass selector: aContext selector.
			result addSearchString: item ]