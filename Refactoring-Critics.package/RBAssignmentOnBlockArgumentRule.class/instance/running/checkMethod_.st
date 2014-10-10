checkMethod: aMethod
	(RBFindBlockArgumentAssignment collectAssignments: aMethod parseTree)
		do: [ :item | 
			result addMethod: aMethod.
			result addSearchString: item ]