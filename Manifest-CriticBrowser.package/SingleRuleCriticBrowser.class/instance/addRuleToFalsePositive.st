menu
addRuleToFalsePositive

	| manifestBuilder |
	criticsModel selectedItems ifNotNil: [ :criticss |
		criticss do: [ :critic |
		manifestBuilder := checker manifestBuilderOf: critic. 
	
		manifestBuilder addRejectRule: rule class uniqueIdentifierName]].
	self updateList
	