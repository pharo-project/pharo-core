private
reapplyAllRules
	
	|  ruleCount total  rule |
	
	ruleCount := 0.
	rule := rulesModel getRoots first.
	total := rule leaves size.

	 rule leaves do: [ :r |
		ruleCount := ruleCount + 1.
		self setTitle: 'run rules: ', r name, ' (', ruleCount asString, '/',  total asString ,')'  .
		self reapplyRule: r ]. 	
	self setTitle: 'Critics Browser'.
	
	self updateCountOf: rule.
	 criticModel updateList.
	 rulesModel updateTree