testMultiplePeriodsTerminatingStatement
	self
		ruleFor: self currentSelector
		plusSelectors: #(multiplePeriodsTerminatingAssignmentStatement)