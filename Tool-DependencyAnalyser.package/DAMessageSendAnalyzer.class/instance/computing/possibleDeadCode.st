possibleDeadCode
	^ self missingMethodsWithPotentialMatch
		select: #isEmpty