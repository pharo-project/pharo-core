private
addRuleToFalsePositive

	| manifestBuilder |
	rulesModel selectedItem ifNotNil: [ :rule |
		rule leaves do: [: r |
			r critics do: [:cl |
				manifestBuilder := checker manifestBuilderOf: cl. 
				manifestBuilder addRejectRule: r class uniqueIdentifierName]
		]].
	criticModel updateList. 	
	