menu
removeRuleToFalsePositive

	| manifestBuilder |
	
	criticsModel selectedItems ifNotNil: [ :criticss |
		criticss do: [ :critic |
			manifestBuilder := checker manifestBuilderOf: critic.
			manifestBuilder removeRejectRule: rule class uniqueIdentifierName]].
	self  updateList
	