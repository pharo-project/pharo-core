private
reapplyThisRule

	| rule |
	
	 rulesModel selectedItem isNil
		ifTrue: [^ self].
	
	rule := rulesModel selectedItem. 
	
	rule leaves do: [:each |
		self reapplyRule: each]. 
	

	criticModel resetSelection. 
	criticModel rule: rule.
	checker rule: rule. 
	self updateCountOf: rule.
	criticModel updateList. 
	self updateTree 