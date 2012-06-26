testing
assignmentCheck: encoder at: location
	^((self isBlockArg and: [Parser allowBlockArgumentAssignment not])
	    or: [self isMethodArg])
			ifTrue: [location]
			ifFalse: [-1]