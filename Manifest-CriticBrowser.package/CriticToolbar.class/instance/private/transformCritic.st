transformCritic
	 criticHolder contents
		ifNotNil: [:critic | ruleHolder contents transform: critic ]
	
