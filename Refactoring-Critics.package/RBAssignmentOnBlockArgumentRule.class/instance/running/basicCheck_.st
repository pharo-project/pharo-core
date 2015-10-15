basicCheck: aMethod
	^ (RBFindBlockArgumentAssignment collectAssignments: aMethod ast) notEmpty 
		