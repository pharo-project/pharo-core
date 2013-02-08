menu
addCriticToToDo

	criticsModel selectedItems
		ifNotNil: [:items | items do: [:item |
			cache addToDo: item forRule: rule	]].
		
		"self updateList"

"	|  ruleId versionId |
	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.
	criticsModel selectedItems 
		ifNotNil: [:items | 
			(items groupedBy: [:each | checker manifestBuilderOf: each]) 
				keysAndValuesDo: [:manifestBuilder :critis |
					(manifestBuilder hasToDoOf: ruleId version: versionId) 
						ifFalse: [manifestBuilder installToDoOf: ruleId version: versionId].
	 				manifestBuilder addAllToDo: critis of: ruleId version: versionId]].
	
	self updateList
	 "