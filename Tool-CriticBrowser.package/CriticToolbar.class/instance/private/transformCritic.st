transformCritic
	 criticHolder value
		ifNotNil: [:critic | ruleHolder value transform: critic ]
	
