testConsistencyCheck
	self 
		ruleFor: self currentSelector
		plusSelectors: #(#noIsNil: )